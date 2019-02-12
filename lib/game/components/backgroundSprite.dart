
/*
    lib/game/components/backgroundSprite.dart
*/

// IMPORTS
import 'dart:ui';
//import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flame/components/component.dart';

// BackgroundSpriteComponent class
class BackgroundSpriteComponent extends SpriteComponent {
  // CONSTRUCTOR
  BackgroundSpriteComponent(Size _size, String _path) { 
    width = _size.width;
    height = _size.height;
    sprite = Sprite(_path);
  }
  // METHODS
  @override
  void render(Canvas c) {
    prepareCanvas(c);
    sprite.render(c, width, height);
  }
  //@override
  //void update(double t) {  }
} // END of BackgroundSprite


// EOF

