import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:voice_message_package/voice_message_package.dart';

import '../../Components/my_drawer.dart';

class TextToAudio extends StatefulWidget {
  const TextToAudio({Key? key}) : super(key: key);

  @override
  State<TextToAudio> createState() => _TextToAudioState();
}

class _TextToAudioState extends State<TextToAudio> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];
  late String responseAudioPath;

  Future<void> makePostRequest(String text) async {
    var url = Uri.parse('https://uc8hso.buildship.run/talk-to-airtable');
    var body = {'text': text};

    try {
      var response = await http.post(url, body: body);

      if (response.statusCode == 200) {
        print('success');
        var responseJson = jsonDecode(response.body);
        String base64Audio = responseJson['outPut'];

        // Decode base64 string to bytes
        List<int> audioBytes = base64Decode(base64Audio);

        // Get the temporary directory
        Directory tempDir = await getTemporaryDirectory();
        String tempPath = tempDir.path;

        // Create a file to write the audio bytes to
        File audioFile = File('$tempPath/output.mp3');
        await audioFile.writeAsBytes(audioBytes);

        // Update the state to display the voice message
        setState(() {
          responseAudioPath = audioFile.path;
          _messages.insert(0, {
            'audioSrc': responseAudioPath,
            'isUser': false,
            'isVoice': true,
            'isFile': true,
          });
        });
        print(responseJson);
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

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
          padding: EdgeInsets.all(12),
          child: Text(
            text,
            style: TextStyle(color: isUser ? Colors.black : Colors.black54),
          ),
        ),
      ),
    );
  }

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
                final message = _messages[index];
                if (message['isVoice'] == true) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/icons/mainIcon.png'),
                          ),
                          VoiceMessageView(
                            controller: VoiceController(
                              audioSrc: message['audioSrc'],
                              onComplete: () {
                                // Do something on complete
                              },
                              onPause: () {
                                // Do something on pause
                              },
                              onPlaying: () {
                                // Do something on playing
                              },
                              onError: (err) {
                                // Do something on error
                              },
                              isFile: message['isFile'],
                              maxDuration: Duration(minutes: 10),
                            ),
                            activeSliderColor: Color(0xff9747FF),
                            circlesColor: Color(0xff9747FF),
                            innerPadding: 12,
                            cornerRadius: 20,
                          ),
                        ],
                      ),
                    ],
                  );
                } else {
                  return _buildMessageBubble(
                    message['text'],
                    message['isUser'],
                  );
                }
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
                      _sendMessage(_controller.text);
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

  void _sendMessage(String text) {
    _messages.insert(0, {'text': text, 'isUser': true, 'isVoice': false});
    // Send the text to the server and handle the response
    makePostRequest(text);
  }
}
