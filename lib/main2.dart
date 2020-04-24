/* ****************************************************************
  Understanding Material Design Basics - Text and Widget Properties
***************************************************************** */

import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text(
          'Hello, Flutter!',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 23.5,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
