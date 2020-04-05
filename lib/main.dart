import 'package:flutter/material.dart';

import 'pages/bottomNav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red[300],
        accentColor: Colors.red[200],
        fontFamily: 'Inter'
      ),
      home: BottomNav(),
    );
  }
}