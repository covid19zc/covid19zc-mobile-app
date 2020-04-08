import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Tracker: Zamboanga City'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contact',
              style: TextStyle(
                  color: Colors.red[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,),
                  textAlign: TextAlign.center,
            ),
            Text(
              'Coming soon...',
              style: TextStyle(
                  color: Colors.red[300],
                  fontSize: 19.0,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}