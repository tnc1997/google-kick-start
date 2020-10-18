import 'dart:io';

import 'package:countdown/countdown.dart';

void main(List<String> arguments) {
  final t = int.parse(stdin.readLineSync());

  for (var x = 1; x <= t; x++) {
    final nk = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final a = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final y = getNoOfKCountdowns(nk[1], a);

    print('Case #$x: $y');
  }
}
