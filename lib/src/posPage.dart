import 'package:flutter/material.dart';
import 'custom/myDrawer.dart';

class PosPage extends StatelessWidget {
  final appTitle = 'Point Of Sale';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF8AB41),
          title: Text(
            "Point Of Sale",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.library_add), text: "Library"),
              Tab(icon: Icon(Icons.build), text: "Custom"),
              Tab(icon: Icon(Icons.info), text: "Info"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text(
              "Library",
              style: (TextStyle(fontSize: 24)),
            )),
            Center(
                child: Text(
              "Custom",
              style: (TextStyle(fontSize: 24)),
            )),
            Center(
                child: Text(
              "Info",
              style: (TextStyle(fontSize: 24)),
            )),
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
