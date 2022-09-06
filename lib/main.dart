import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/layout/desktop.dart';
import 'package:flutter_responsive_ui/layout/mobile.dart';
import 'package:flutter_responsive_ui/utils/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: ResponsiveContainer(
        desktopChild: Desktop(),
        mobileChild: Mobile(),
      )),
    );
  }
}
