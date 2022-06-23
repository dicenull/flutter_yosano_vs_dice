import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final gameProvider = Provider((_) => YosanoVsDice());

class YosanoVsDice extends FlameGame {
  @override
  Future<void>? onLoad() async {
    add(
      RectangleComponent(
        position: Vector2.zero(),
        size: Vector2.all(40),
      ),
    );
    return;
  }
}
