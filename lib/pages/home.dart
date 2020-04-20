
import 'package:flutter/material.dart';
import 'package:flutter_voice/pages/messages.dart';
import 'package:flutter_voice/provider/count_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  final List<Tab> tabs = <Tab>[
    new Tab(text: "message"),
    new Tab(text: "hello"),
  ];
  final List<Widget> views = [
    new Messages(),
    new Container(),
  ];

  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(initialIndex: 0,vsync: this, length: tabs.length);
  }

//  void _incrementCounter() {
//    CountProvider countProvider = Provider.of<CountProvider>(context, listen: false);
//    countProvider.incrementCounter();
//  }

  @override
  Widget build(BuildContext context) {
    print("<----------------------------------home rebuild----------------------------------->");
    return  WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title:  TabBar(
            controller: _tabController,
            labelColor: Theme.of(context).textTheme.title.color,// SQColor.white,
            labelStyle: TextStyle(fontSize: 16,color: Theme.of(context).textTheme.title.color, fontWeight: FontWeight.bold),
            indicatorColor: Theme.of(context).textTheme.title.color,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            isScrollable: true,
            tabs: tabs,
          ),
        ),
        body:  Column(
          children: <Widget>[

            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: views
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return  new Container(child: Center(child: Text("${Provider.of<CountProvider>(context).count}"),),);
  }
}
