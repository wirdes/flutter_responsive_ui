import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/components/elements.dart';

import '../components/app_drawer.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Flutter Responsive UI - Mobile"),
        backgroundColor: Colors.grey[900],
        centerTitle: false,
      ),
      drawer: const AppDrawer(),
      body: const Padding(padding: EdgeInsets.all(8.0), child: Elements()),
    );
  }
}
