import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Player extends PositionComponent with KeyboardHandler {
  final _keyMap = {
    LogicalKeyboardKey.keyW: Vector2(0, -1),
    LogicalKeyboardKey.keyA: Vector2(-1, 0),
    LogicalKeyboardKey.keyS: Vector2(0, 1),
    LogicalKeyboardKey.keyD: Vector2(1, 0),
  };

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(position.toOffset(), 20, Paint()..color = Colors.red);
    super.render(canvas);
  }

  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    _keyMap.forEach((key, dir) {
      if (keysPressed.contains(key)) {
        position += dir;
      }
    });

    return true;
  }
}
