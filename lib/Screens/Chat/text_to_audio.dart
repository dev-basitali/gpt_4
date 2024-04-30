import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  String responseAudioPath = '';
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
    // Simulate AI response (for demonstration purposes)
    _playResponseAudio(text);
  }

  void _playResponseAudio(String inputText) {
    // Replace this with the path to your audio file or URL
    responseAudioPath =
        'https://dl.solahangs.com/Music/1403/02/H/128/Hiphopologist%20-%20Shakkak%20%28128%29.mp3';
    _messages.insert(0, {
      'audioSrc': responseAudioPath,
      'isUser': false,
      'isVoice': true,
      'isFile': false,
    });
    // No need to play the audio here, VoiceMessageView will handle it
    setState(() {});
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
          child: isUser
              ? Text(text, style: const TextStyle(color: Colors.black))
              : Text(text),
        ),
      ),
    );
  }
}
