
import 'package:flutter/material.dart';
import 'package:flutter_voice/pages/third.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  pushThird(context) {
    return Navigator.push(context, MaterialPageRoute(builder: (context) {
      return new Third();
    }));
  }
  @override
  Widget build(BuildContext context) {
    print("<----------------------------------message rebuild----------------------------------->");
    return Scaffold(
      appBar: AppBar(
        title: Text("消息页"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text("地方"),
          ),
          IconButton(
            onPressed: (){
              pushThird(context);
            },
            icon: Icon(Icons.more_horiz),
          )
        ],
      ),
    );
  }
}
