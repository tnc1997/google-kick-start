import 'dart:io';

import 'package:alien_generator/alien_generator.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final G = int.parse(stdin.readLineSync());

    final y = calculateNumberOfPossibleValues(G);

    print('Case #$x: $y');
  }
}
