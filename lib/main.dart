
/*
    lib/main.dart
*/

// IMPORTS
import 'package:flutter/material.dart';

// Application entry point
void main() => runApp(
  GravityDigApp()
);

// GravityDigApp stateless widget class
class GravityDigApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gravity Dig Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
} // END of GravityDigApp


// HomePage stateless widget class
class HomePage extends StatelessWidget {
  // METHODS
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Gravity Dig Home Page'),
        ],
      ),
    );
  }
} // END of HomePage


// EOF

