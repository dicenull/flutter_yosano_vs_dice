import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yosano_vs_dice/yosano_vs_dice.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GamePage extends HookConsumerWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GameWidget(
      game: ref.watch(gameProvider),
    );
  }
}
