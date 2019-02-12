
/*
    lib/game/components/simple.dart
*/

// IMPORTS
import 'package:flame/components/component.dart';

// dart libs
import 'dart:ui';


// SimpleComponent class
class SimpleComponent extends PositionComponent {
  // FIELDS
  static double xPos = 0;
  static double yPos;
  static double compHeight = 50;
  static Paint fillColor;
  // CONSTRUCTOR
  SimpleComponent(Size size, Paint color) {
    yPos = (size.height - compHeight);
    width = size.width;
    fillColor = color;
  }
  // METHODS
  void render(Canvas c) {
    prepareCanvas(c);
    c.drawRect(
      Rect.fromLTWH(xPos, yPos, width, compHeight), 
      fillColor
    );
  }
  void update(double d) {
    // TODO complete this
  }
} // END of SimpleComponent


// EOF

