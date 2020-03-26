import 'package:flutter/material.dart';
import '../posPage.dart';
import '../activityPage.dart';
import '../inventoryPage.dart';
import '../shiftPage.dart';
import '../settingsPage.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFF8AB41),
            ),
            child: Text(
              'Corona',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.view_quilt),
            title: Text('Point Of Sale'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PosPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Activity'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ActivityPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment_turned_in),
            title: Text('Inventory'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InventoryPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.swap_horizontal_circle),
            title: Text('Shift'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShiftPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
        ],
      ),
    );
  }
}
