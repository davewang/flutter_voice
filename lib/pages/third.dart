import 'package:flutter/material.dart';
class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {


  @override
  Widget build(BuildContext context) {
    print("<----------------------------------third rebuild----------------------------------->");
    return Scaffold(
      appBar: AppBar(
        title: Text("第三页"),
      ),
      body: Container(
        child: Text("地方"),
      ),
    );
  }
}
