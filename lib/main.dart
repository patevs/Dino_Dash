
/*
    lib/main.dart
*/

// IMPORTS

// material design
import 'package:flutter/material.dart';

// dart utilities
//import 'dart:ui';

// Flame game engine
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/components/component.dart';
import 'package:flame/palette.dart';

// END of IMPORTS


// Palette class stores global color values
class Palette {
  //static const PaletteEntry black = BasicPalette.black;
  //static const PaletteEntry WHITE = BasicPalette.white;
  //static const PaletteEntry GREY  = PaletteEntry(Color(0xFF404040));
  //static const PaletteEntry red   = PaletteEntry(Colors.red);
  static const PaletteEntry GREEN = PaletteEntry(Colors.green);
  //static const PaletteEntry blue  = PaletteEntry(Colors.blue);
} // END of Palette

// text rendering styles
//TextConfig regular = TextConfig(color: Palette.WHITE.color);
//TextConfig small   = regular.withFontSize(14.0);
//TextConfig tiny    = regular.withFontSize(12.0);

// Application entry point
void main() => runApp(
  GravityDigGame().widget
);


// SimpleComponent class
class SimpleComponent extends PositionComponent {
  // CONSTRUCTOR
  SimpleComponent() {
    // TODO complete this
  }
  // METHODS
  void render(Canvas c) {
    c.drawRect(
      Rect.fromLTWH(0, 0, 100, 100), 
      Palette.GREEN.paint
    );
  }
  void update(double d) {
    // TODO complete this
  }
} // END of SimpleComponent


// GravityDigGame class
class GravityDigGame extends BaseGame {
  // CONSTRUCTOR
  GravityDigGame() {
    // enter fullscreen mode
    Flame.util.fullScreen();
    // start the game
    _start();
  }
  // METHODS
  _start() async {
    add(SimpleComponent());
  }
} // END of GravityDigGame


// EOF

