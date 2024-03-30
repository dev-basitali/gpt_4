import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gpt_4/Components/my_drawer.dart';
import 'package:http/http.dart' as http;

enum MessageType {
  User,
  AI,
}

class TextToText extends StatefulWidget {
  const TextToText({Key? key}) : super(key: key);

  @override
  _TextToTextState createState() => _TextToTextState();
}

class _TextToTextState extends State<TextToText> {
  bool _isNewMessage = true;
  bool _isGeneratingResponse = false;
  String _latestAIResponse = "";
  bool isLatestAIReseponse = false;

  String id = DateTime.now().millisecondsSinceEpoch.toString();
  final TextEditingController _controller = TextEditingController();

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      FirebaseFirestore.instance.collection('messages').add({
        'message': message,
        'type': MessageType.User.toString(),
        'timestamp': Timestamp.now(),
        "id": id
      });
      makePostRequest(message); // Send the message to AI and store AI response
      setState(() {
        _isGeneratingResponse = true;
      });
    }
    _controller.clear();
  }

  void makePostRequest(String text) async {
    var url = Uri.parse('https://geguwv.buildship.run/generateText');
    var body = {'text': text};

    try {
      var response = await http.post(url, body: body);

      if (response.statusCode == 200) {
        var response1 = jsonDecode(response.body);
        _simulateAIResponse(response1['outPut']);
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    } finally {
      setState(() {
        _isGeneratingResponse = false;
      });
    }
  }

  void _simulateAIResponse(String message) {
    _latestAIResponse = message; // Store the latest AI response
    FirebaseFirestore.instance.collection('messages').add({
      'message': message,
      'type': MessageType.AI.toString(),
      'timestamp': Timestamp.now(),
      "id": id
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Chat App')),
      drawer: const MyDrawer(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('messages')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final message = snapshot.data!.docs[index]['message'];
                      final messageType = snapshot.data!.docs[index]['type'] ==
                              MessageType.User.toString()
                          ? MessageType.User
                          : MessageType.AI;
                      if (snapshot.data!.docs[index]['id'] != null ||
                          snapshot.data!.docs[index]['id'] != null) {
                        isLatestAIReseponse =
                            id == snapshot.data!.docs[index]['id'];
                      }
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: messageType == MessageType.User
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: [
                            // Leading icon and title
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                messageType == MessageType.User
                                    ? CircleAvatar(
                                        backgroundColor: Colors.black54,
                                        child: Image.asset(
                                            'assets/icons/user.png'),
                                      )
                                    : CircleAvatar(
                                        child: Image.asset(
                                            'assets/icons/mainIcon.png'),
                                      ),
                                Text(
                                  messageType == MessageType.User
                                      ? 'You'
                                      : 'AI',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 8.0),
                            Flexible(
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.7,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffE0E0E0),
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10.0,
                                  horizontal: 16.0,
                                ),
                                child: messageType == MessageType.User
                                    ? Text(
                                        message,
                                        style: TextStyle(
                                          color: messageType == MessageType.User
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 16.0,
                                        ),
                                      )
                                    : isLatestAIReseponse
                                        ? AnimatedTextKit(
                                            totalRepeatCount: 1,
                                            stopPauseOnTap: false,
                                            animatedTexts: [
                                              TyperAnimatedText(message.trim())
                                            ],
                                            onFinished: () {
                                              setState(() {
                                                _isNewMessage = false;
                                              });
                                            },
                                          )
                                        : Text(
                                            message,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                            ),
                                          ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02,vertical: height * 0.01),
                    child: Container(
                      height: 50,
                      width: width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(
                          color: Color(0xffE0E0E0)
                        )
                      ),
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
                    if (_controller.text.isNotEmpty) {
                      _sendMessage(_controller.text);
                      id = DateTime.now().millisecondsSinceEpoch.toString();
                      setState(() {});
                    }
                  },
                    child: Image.asset(
                      height: height * 0.05,
                        fit: BoxFit.fill,
                        'assets/icons/sndbtn.png'),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
