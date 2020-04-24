/* *******************************************
  - Flutter Scaffold Widget and Properties
  - Flutter InkWell Widget and Event Listeners
******************************************** */

import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: ScaffoldExample(),
    ),
  );
}

class ScaffoldExample extends StatelessWidget {
  // função privada
  _tapButton() => debugPrint('Tapped button');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint('Email tapped!')),
          IconButton(
              icon: Icon(Icons.access_alarms), onPressed: () => _tapButton),
        ],
      ),
      backgroundColor: Colors.redAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Text(
                'Tap me!',
                style: TextStyle(fontSize: 23.4),
              ),
              // eventos 
              onTap: () => debugPrint('Tapped...'),
              onDoubleTap: () => debugPrint('Double Tapped...'),
              onLongPress: () => debugPrint('Long pressed...'),
            ),
          ],
        ),
      ),
    );
  }
}
