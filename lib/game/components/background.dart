
/*
    lib/game/components/background.dart
*/

// IMPORTS
import 'dart:ui';
//import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flame/components/component.dart';

// BackgroundComponent class
class BackgroundSprite extends SpriteComponent {
  // FIELDS
  static final String bgPath = "assets/images/backgrounds/07_background.png";
  static Sprite bgSprite = Sprite(bgPath);
  static Paint bgPaint;
  // CONSTRUCTOR
  BackgroundSprite(Size size, Paint paint) { 
    width = size.width;
    height = size.height;
    bgPaint = paint;
  }
  // METHODS
  void render(Canvas c) {
    c.drawImageRect(
      bgSprite.image, 
      Rect.fromLTWH(0, 0, bgSprite.src.width, bgSprite.src.height), 
      Rect.fromLTWH(0, 0, width, height), 
      bgPaint
    );
  }
  void update(double t) {
    // TODO
  }
} // END of BackgroundSprite


// EOF

