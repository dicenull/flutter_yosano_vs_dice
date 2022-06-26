import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_yosano_vs_dice/yosano_vs_dice.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GamePage extends HookConsumerWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = useMemoized(() => YosanoVsDice());

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Yosano vs Dice'),
              ),
              SizedBox(
                width: 300,
                height: 300,
                child: GameWidget(
                  game: game,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
