import 'package:flutter/material.dart';
import 'custom/myDrawer.dart';

class SettingsPage extends StatelessWidget {
  final appTitle = 'Settings';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8AB41),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(
          "This is Settings Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
