import 'package:flutter/material.dart';
import 'custom/myDrawer.dart';

class ShiftPage extends StatelessWidget {
  final appTitle = 'Shift';

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
          "Shift",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          width: 25.0,
          height: 25.0,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          child: Text("Shift Management", style: TextStyle(color: Colors.white),),
        ),
        RaisedButton(
          onPressed: (){},
          child: Text("Shift Options"),
        ),
        RaisedButton(
          onPressed: (){},
          child: Text("Current Shift"),
        ),
        RaisedButton(
          onPressed: (){},
          child: Text("Shift History"),
        ),
      ]),
      drawer: MyDrawer(),
    );
  }
}
