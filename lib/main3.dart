/* **********************************************
  -- Scaffold Widget and Properties
  -- InkWell Widget and Event Listeners:
    - personalização de botão
  -- GestureDetector widget:
    - mais opções de personalização do que InkWell
  -- SnackBar widget
  -- BottomNavigationBar widget
  -- FloatingActionButton widget
************************************************ */

import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: ScaffoldExample(),
    ),
  );
}

class CustomButtonGestureDetector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text('Hello Snack Bar!'),
          backgroundColor: Colors.red,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Gesture Detector Button',
          style: TextStyle(fontSize: 23.4),
        ),
      ),
    );
  }
}

class CustomButtonInkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        //padding: EdgeInsets.all(10.0),
        height: 45.0,
        width: 260.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            'Tap me!',
            style: TextStyle(fontSize: 23.4),
          ),
        ),
      ),
      // eventos
      onTap: () => debugPrint('Tapped...'),
      onDoubleTap: () => debugPrint('Double Tapped...'),
      onLongPress: () => debugPrint('Long pressed...'),
    );
  }
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
            onPressed: () => debugPrint('Email tapped!'),
          ),
          IconButton(
              icon: Icon(Icons.access_alarms), onPressed: () => _tapButton),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.call_missed),
        onPressed: () => debugPrint('Hello, FloatingActionButton'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text('First')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), title: Text('Second')),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplay), title: Text('Third')),
        ],
        onTap: (int index) => debugPrint('Tapped item: $index'),
      ),
      backgroundColor: Colors.redAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButtonGestureDetector(),
            CustomButtonInkWell(),
          ],
        ),
      ),
    );
  }
}
