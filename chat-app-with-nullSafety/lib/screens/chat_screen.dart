import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../constants.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
User? firebaseUser;

class ChatScreen extends StatefulWidget {
  static const String id = "chat";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  String? messageText;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final messageTextController = TextEditingController();
  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        firebaseUser = user;
        print(firebaseUser!.email);
      }
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('⚡️ Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessageStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (value) {
                        //Do something with the user input.
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      messageTextController.clear();
                      //Implement send functionality.
                      _firestore.collection("message").add({
                        "sender": "${_auth.currentUser!.email}",
                        "text": "$messageText",
                        "time": DateTime.now()
                      });
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomMessageBubble extends StatelessWidget {
  final String? sender;
  final String? text;
  final bool? isMe;
  CustomMessageBubble({this.sender, this.text, this.isMe});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender!,
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          Material(
              borderRadius: isMe!
                  ? BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topRight: Radius.circular(30))
                  : BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30)),
              color: isMe! ? Colors.lightBlueAccent : Colors.white,
              elevation: 10.0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  text!,
                  style: TextStyle(
                      fontSize: 16,
                      color: isMe! ? Colors.white : Colors.black54),
                ),
              )),
        ],
      ),
    );
  }
}

class MessageStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection("message").orderBy("time").snapshots(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          final dynamic msgDocs = snapshot.data!.docs.reversed;
          List<CustomMessageBubble> messageBubbles = [];
          for (var msg in msgDocs) {
            final msgText = msg.get("text");
            final msgSender = msg.get("sender");
            final currentUser = firebaseUser!.email;
            if (msgSender == currentUser) {}

            final messageBubble = CustomMessageBubble(
              sender: msgSender,
              text: msgText,
              isMe: msgSender == currentUser,
            );

            messageBubbles.add(messageBubble);
            print(messageBubbles);
          }
          return Expanded(
            child: ListView(
                reverse: true,
                children: messageBubbles),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.lightBlueAccent,
            ),
          );
        }
      },
    );
  }
}
