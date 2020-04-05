import 'package:flutter/material.dart';
import 'home.dart';
import 'map.dart';
import 'symptoms.dart';
import 'cases.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _currentIndex = 0;
  final List<Widget> tabs = [
    Home(),
    Cases(),
    Map(),
    Symptoms(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Cases();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Cases'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop),
            title: Text('Map'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_quote),
            title: Text('Symptoms'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      )
    );
  }
}