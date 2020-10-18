import 'dart:io';

import 'package:kick_start/kick_start.dart';

void main(List<String> arguments) {
  final t = int.parse(stdin.readLineSync());

  for (var x = 1; x <= t; x++) {
    final s = stdin.readLineSync();

    final y = getNoOfLuckyFragments(s);

    print('Case #$x: $y');
  }
}
