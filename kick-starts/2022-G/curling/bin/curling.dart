import 'dart:io';

import 'package:curling/curling.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final R = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final N = int.parse(stdin.readLineSync());
    final XY = <List<int>>[];

    for (var i = 0; i < N; i++) {
      XY.add(stdin.readLineSync().split(' ').map(int.parse).toList());
    }

    final M = int.parse(stdin.readLineSync());
    final ZW = <List<int>>[];

    for (var i = 0; i < M; i++) {
      ZW.add(stdin.readLineSync().split(' ').map(int.parse).toList());
    }

    final y = getTeamScores(R, XY, ZW);

    print('Case #$x: ${y[0]} ${y[1]}');
  }
}
