import 'dart:io';

import 'package:dogs_and_cats/dogs_and_cats.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final NDCM = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final S = stdin.readLineSync();

    final y = canAllTheDogsBeFed(NDCM[0], NDCM[1], NDCM[2], NDCM[3], S);

    print('Case #$x: ${y ? 'YES' : 'NO'}');
  }
}
