import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gpt_4/Components/my_drawer.dart';

class ImageToVideo extends StatefulWidget {
  const ImageToVideo({super.key});

  @override
  State<ImageToVideo> createState() => _ImageToVideoState();
}

class _ImageToVideoState extends State<ImageToVideo> {
  final List<Map<String, dynamic>> _messages = []; // List to store messages
  String _responseImageUrl = '';
  File? _imageFile;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                return _buildMessageBubble(
                    _messages[index]['text'], _messages[index]['isUser']);
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

  void _sendMessage(String text) {
    _messages.insert(
        0, {'text': text, 'isUser': true}); // Add user message to the list
    // Simulate AI response (for demonstration purposes)
    _responseImageUrl = _getResponseImageUrl(text);
    if (_responseImageUrl.isNotEmpty) {
      _messages.insert(0, {
        'text': _responseImageUrl,
        'isUser': false
      }); // Add AI response to the list
    }
  }

  // Placeholder function to simulate AI response with an image URL
  String _getResponseImageUrl(String inputText) {
    // This is where you would integrate with your AI model to get the response image URL
    // For demonstration purposes, just return a static image URL
    return 'assets/images/sample.png';
  }

  // Function to build message bubble
  Widget _buildMessageBubble(String text, bool isUser) {
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
              : Image.asset(text),
        ),
      ),
    );
  }
}
