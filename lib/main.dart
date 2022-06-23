import 'package:flutter/material.dart';
import 'package:flutter_yosano_vs_dice/pages/main_game_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: GamePage(),
  ));
}
