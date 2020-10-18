import 'dart:io';

import 'package:allocation/allocation.dart';

void main(List<String> arguments) {
  final t = int.parse(stdin.readLineSync());

  for (var x = 1; x <= t; x++) {
    final nb = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final a = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    if (a.length != nb[0]) {
      throw Exception('The number of houses is invalid.');
    }

    final y = getMaxNoOfHouses(nb[1], a);

    print('Case #$x: $y');
  }
}
