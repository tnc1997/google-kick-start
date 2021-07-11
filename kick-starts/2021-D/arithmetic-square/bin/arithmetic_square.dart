import 'dart:io';

import 'package:arithmetic_square/arithmetic_square.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final G = <List<int>>[];

    for (var i = 0; i < 3; i++) {
      G.add(stdin
          .readLineSync()
          .split(' ')
          .map((input) => int.parse(input))
          .toList());
    }

    final y = calculateMaximumNumberOfArithmeticProgressions(G);

    print('Case #$x: $y');
  }
}
