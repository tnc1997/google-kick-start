import 'dart:io';

import 'package:coloring_game/coloring_game.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final N = int.parse(stdin.readLineSync());

    final y = getMaxAchievableScore(N);

    print('Case #$x: $y');
  }
}
