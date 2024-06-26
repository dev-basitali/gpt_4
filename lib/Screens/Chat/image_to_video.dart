import 'dart:convert';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:gpt_4/Components/my_drawer.dart';
import 'package:http/http.dart' as http;

class ImageToVideo extends StatefulWidget {
  const ImageToVideo({super.key});

  @override
  State<ImageToVideo> createState() => _ImageToVideoState();
}

class _ImageToVideoState extends State<ImageToVideo> {
  final List<Map<String, dynamic>> _messages = []; // List to store messages
  File? _imageFile;
  UploadTask? _uploadTask;
  Future<String>? _uploadFuture;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessageBubble(_messages[index]['text'],
                    _messages[index]['isUser'], _messages[index]['isVideo']);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: _imageFile == null
                      ? ElevatedButton(
                          onPressed: _pickImage,
                          child: Text('Pick an Image'),
                        )
                      : Image.file(_imageFile!),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (_imageFile != null) {
                        _uploadImage(_imageFile!);
                        _imageFile = null;
                      }
                    });
                  },
                  child: Image.asset(
                    'assets/icons/sndbtn.png',
                    height: height * 0.05,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          _uploadFuture != null
              ? FutureBuilder<String>(
                  future: _uploadFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      return Text('Uploaded to: ${snapshot.data}');
                    } else {
                      return Container();
                    }
                  },
                )
              : Container(),
        ],
      ),
    );
  }

  void _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
    }
  }

  Future<void> _uploadImage(File image) async {
    try {
      // Generate a unique file name
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      // Upload image to Firebase Storage
      _uploadTask = FirebaseStorage.instance
          .ref()
          .child('uploads/$fileName')
          .putFile(image);

      await _uploadTask!.whenComplete(() async {
        if (_uploadTask!.snapshot.state == TaskState.success) {
          String downloadUrl = await _uploadTask!.snapshot.ref.getDownloadURL();
          setState(() {});
          await _sendMessage(downloadUrl); // Send the download URL as message
          return downloadUrl;
        } else {
          throw Exception('Upload failed');
        }
      });
    } catch (e) {
      throw Exception('Error uploading image: $e');
    }
  }

  Future<void> _sendMessage(String text) async {
    setState(() {
      _messages.insert(0, {'text': text, 'isUser': true, 'isVideo': false});
    });
    await makePostRequest(text);
  }

  void _getResponseVideoUrl(String output) {
    setState(() {
      _messages.insert(0, {
        'text': output,
        'isUser': false,
        'isVideo': true,
      });
    });
  }

  Future<void> makePostRequest(String text) async {
    var url = Uri.parse('https://uc8hso.buildship.run/image-to-video');
    var body = {'text': text};

    try {
      var response = await http.post(url, body: body);

      if (response.statusCode == 200) {
        var response1 = jsonDecode(response.body);
        _getResponseVideoUrl(response1['outPut']);
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    } finally {
      setState(() {});
    }
  }

  // Function to build message bubble
  Widget _buildMessageBubble(String text, bool isUser, bool isVideo) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: isUser
                ? Border.all(color: Colors.black)
                : Border.all(color: Colors.white),
          ),
          padding: const EdgeInsets.all(12),
          child: isUser
              ? text.contains('https')
                  ? Text(text)
                  : Text(text, style: const TextStyle(color: Colors.black))
              : isVideo
                  ? VideoWidget(url: text)
                  : Image.asset(text),
        ),
      ),
    );
  }
}

class VideoWidget extends StatefulWidget {
  final String url;

  const VideoWidget({Key? key, required this.url}) : super(key: key);

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : Container(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
  }
}
