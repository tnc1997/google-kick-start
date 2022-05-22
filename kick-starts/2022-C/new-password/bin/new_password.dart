import 'dart:io';

import 'package:new_password/new_password.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final N = int.parse(stdin.readLineSync());

    final O = stdin.readLineSync();

    final y = getNewPassword(O);

    print('Case #$x: $y');
  }
}
