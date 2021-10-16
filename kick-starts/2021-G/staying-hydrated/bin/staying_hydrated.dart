import 'dart:io';

import 'package:staying_hydrated/staying_hydrated.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final furnitures = <Furniture>[];

    final K = int.parse(stdin.readLineSync());

    for (var i = 0; i < K; i++) {
      final items = stdin
          .readLineSync()
          .split(' ')
          .map((input) => int.parse(input))
          .toList();

      furnitures.add(Furniture.fromList(items));
    }

    final y = calculateWaterBottleCoordinates(furnitures);

    print('Case #$x: ${y.x} ${y.y}');
  }
}
