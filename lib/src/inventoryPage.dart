import 'package:flutter/material.dart';
import 'custom/myDrawer.dart';

class InventoryPage extends StatelessWidget {
  final appTitle = 'Inventory';

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
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF8AB41),
          title: Text(
            "Inventory",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chrome_reader_mode), text: "Item Library"),
              Tab(icon: Icon(Icons.receipt), text: "Ingredient"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text(
              "Item Library",
              style: (TextStyle(fontSize: 24)),
            )),
            Center(
                child: Text(
              "Ingredient",
              style: (TextStyle(fontSize: 24)),
            )),
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
