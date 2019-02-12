
/*
    lib/game/components/playerSprite.dart
*/

// IMPORTS
import 'dart:ui';
import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';


// PlayerSprite component class
class PlayerSprite extends SpriteComponent {
  // FIELDS
  static const String _imgPath = "characters/dino.png";
  // CONSTRUCTOR
  PlayerSprite(Size _size) {
    width = height = 128;
    y = _size.height - 240;
    sprite = Sprite(_imgPath);
  }
  // METHODS
  @override
  void render(Canvas c) { 
    prepareCanvas(c); 
    sprite.render(c, width, height);
  }
  @override
  void update(double t) {
    // TODO: get user input and update components x and y positions accordingly
  }
} // END of PlayerSprite