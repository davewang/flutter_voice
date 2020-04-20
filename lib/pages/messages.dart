
import 'package:flutter/material.dart';

import 'message.dart';

class Messages extends StatefulWidget  {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages>  with AutomaticKeepAliveClientMixin{
  pushMessage(context) {
    return Navigator.push(context, MaterialPageRoute(builder: (context) {
      return new Message();
    }));
  }
  @override
  Widget build(BuildContext context) {
    print("<----------------------------------message list rebuild----------------------------------->");
    return Scaffold(

      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("push to next page"),
            onTap: (){
              pushMessage(context);
            },
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
