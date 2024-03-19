import 'package:flutter/material.dart';

class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'Vedant Singh',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            accountEmail: Text(
              'singhvedant1701@gmail.com',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('profile.jpeg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Notes'),
            onTap: () {
              // Handle notes tap
            },
          ),
          ListTile(
            leading: Icon(Icons.archive),
            title: Text('Archive'),
            onTap: () {
              // Handle archive tap
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Trash'),
            onTap: () {
              // Handle trash tap
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle settings tap
            },
          ),
        ],
      ),
    );
  }
}