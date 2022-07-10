import 'dart:io';

import 'package:image_labeler/image_labeler.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final NM = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final A = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final y = getMaxSuccessMetric(A, NM[1]);

    print('Case #$x: $y');
  }
}
