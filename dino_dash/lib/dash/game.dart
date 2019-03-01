
/*
    dino_dash/lib/game/game.dart
*/

// IMPORTS
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'dart:ui';

import 'components/backgroundSprite.dart';

// DinoDashGame class
class DinoDashGame extends BaseGame {
  // CONSTRUCTOR
  DinoDashGame() {
    // load all image assets
    //Flame.images.loadAll(allImages);
    // enter fullscreen mode
    Flame.util.fullScreen();
    // start the game
    _start();
  }
    // METHODS
  _start() async {
    // get screen size
    Size size = await Flame.util.initialDimensions();
    add(BackgroundSpriteComponent(size, "backgrounds/07_background.png"));
    // add components
  }
}


// EOF

