import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter_yosano_vs_dice/components/player.dart';

class YosanoVsDice extends FlameGame with HasKeyboardHandlerComponents {
  @override
  Future<void>? onLoad() async {
    add(Player()..position = Vector2.zero());
    return;
  }
}
