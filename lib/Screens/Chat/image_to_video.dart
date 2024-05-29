import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:gpt_4/Components/my_drawer.dart';

class ImageToVideo extends StatefulWidget {
  const ImageToVideo({super.key});

  @override
  State<ImageToVideo> createState() => _ImageToVideoState();
}

class _ImageToVideoState extends State<ImageToVideo> {
  final List<Map<String, dynamic>> _messages = []; // List to store messages
  File? _imageFile;

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
                        _sendMessage(_imageFile!.path); // Send image path
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
      UploadTask uploadTask = FirebaseStorage.instance
          .ref()
          .child('uploads/$fileName')
          .putFile(image);
      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      _sendMessage(downloadUrl); // Send the download URL as message
    } catch (e) {
      print('Error uploading image: $e');
    }
  }

  void _sendMessage(String text) {
    _messages.insert(0, {
      'text': text,
      'isUser': true,
      'isVideo': false
    }); // Add user message to the list
    // Simulate AI response (for demonstration purposes)
    String responseVideoUrl = _getResponseVideoUrl(text);
    if (responseVideoUrl.isNotEmpty) {
      _messages.insert(0, {
        'text': responseVideoUrl,
        'isUser': false,
        'isVideo': true,
      }); // Add AI response to the list
    }
  }

  // Placeholder function to simulate AI response with a video URL
  String _getResponseVideoUrl(String inputText) {
    // This is where you would integrate with your AI model to get the response video URL
    // For demonstration purposes, just return a static video URL
    return 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';
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
              ? Text(text, style: const TextStyle(color: Colors.black))
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
