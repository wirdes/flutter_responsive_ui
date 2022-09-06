import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerTextColor = TextStyle(
      color: Colors.grey[600],
    );
    const tilePadding = EdgeInsets.only(left: 8.0, right: 8, top: 8);
    return Drawer(
      backgroundColor: Colors.grey[300],
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.person,
              size: 64,
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.home),
              title: Text(
                'D A S H B O A R D',
                style: drawerTextColor,
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.settings),
              title: Text(
                'S E T T I N G S',
                style: drawerTextColor,
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.info),
              title: Text(
                'A B O U T',
                style: drawerTextColor,
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: Text(
                'L O G O U T',
                style: drawerTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
