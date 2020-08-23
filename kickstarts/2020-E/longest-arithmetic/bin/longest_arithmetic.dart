import 'dart:io';

import 'package:longest_arithmetic/longest_arithmetic.dart';

void main(List<String> arguments) {
  final t = int.parse(stdin.readLineSync());

  for (var x = 1; x <= t; x++) {
    final n = int.parse(stdin.readLineSync());

    final a = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    if (a.length != n) {
      throw Exception('The number of integers is invalid.');
    }

    final y = getLongestContiguousArithmeticSublist(a);

    print('Case #$x: $y');
  }
}
