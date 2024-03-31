import 'package:flutter/material.dart';

import '../../Components/my_drawer.dart';

class TextToImage extends StatefulWidget {
  const TextToImage({Key? key}) : super(key: key);

  @override
  State<TextToImage> createState() => _TextToImageState();
}

class _TextToImageState extends State<TextToImage> {
  TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> _messages = []; // List to store messages
  String _responseImageUrl = '';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat App'),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true, // To show latest message at the bottom
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.01),
                    child: Container(
                      height: 50,
                      width: width * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(45),
                          border: Border.all(color: const Color(0xffE0E0E0))),
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Ask your question here ...',
                          hintStyle: const TextStyle(color: Color(0xffE0E0E0)),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 14.0,
                            horizontal: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _sendMessage(_controller.text); // Send user message
                      _controller.clear();
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

  // Function to send a message
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
