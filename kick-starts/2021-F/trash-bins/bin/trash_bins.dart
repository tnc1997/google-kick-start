import 'dart:io';

import 'package:trash_bins/trash_bins.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final N = int.parse(stdin.readLineSync());

    final S = stdin
        .readLineSync()
        .split('')
        .map((input) => int.parse(input))
        .toList();

    final y = calculateSumOfDistances(S);

    print('Case #$x: $y');
  }
}
