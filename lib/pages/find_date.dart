import 'package:flutter/material.dart';
import './search.dart';
import './chat_screen.dart';
import './status_screen.dart';
import 'dart:async';



class FindDate extends StatefulWidget {
  @override
  FindDateState createState() => new FindDateState();
}

class FindDateState extends State<FindDate>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dates"),backgroundColor: Colors.red,
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(text: "SEARCH"),
            new Tab(text: "CHATS"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CallsScreen(),
          new ChatScreen(),

        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}