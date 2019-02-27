
/*
    dino_dash/lib/main.dart
*/

// IMPORTS

// material design
import 'package:flutter/material.dart';

// gravity dig game
//import 'game/game.dart';

// END of IMPORTS


// Application entry point
/*
void main() => runApp(
  GravityDigGame().widget
);
*/
void main() async {
  runApp(
    MaterialApp(
      title: 'Dino Dash Game',
      home: SplashScreen()
    )
  );
}

// SplashScreen stateless widget class
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('SPLASH SCREEN')
        ],
      ),
    );
  }
}



// EOF

