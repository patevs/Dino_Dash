
/*
    lib/game/components/simple.dart
*/

// IMPORTS
import 'dart:ui';
import 'package:flame/components/component.dart';


// SimpleComponent class
class SimpleComponent extends PositionComponent {
  // FIELDS
  static const double _height = 48;
  static double _yPos;
  static Paint _fillColor;
  // CONSTRUCTOR
  SimpleComponent(Size _size, Paint _color) {
    width = _size.width;
    _yPos = (_size.height - _height);    
    _fillColor = _color;
  }
  // METHODS
  @override
  void render(Canvas c) {
    prepareCanvas(c);
    c.drawRect(
      Rect.fromLTWH(0, _yPos, width, _height), 
      _fillColor
    );
  }
  @override
  void update(double t) { }
  /*
  @override
  void resize(Size size) {
    this.x = ((size.width - this.width) / 2) + (this.width / 2);
    this.y = ((size.height - this.height) / 2) + (this.height / 2);
  }
  */
} // END of SimpleComponent


// EOF

