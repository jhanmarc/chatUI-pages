import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/user_model.dart';

class ChatPage extends StatefulWidget {

  final User user;
  ChatPage({this.user});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: 
          Text(widget.user.name)
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 28.0,
            color: Colors.white,
            onPressed: () {},
        ),
        ],
      ),
    );
  }
}