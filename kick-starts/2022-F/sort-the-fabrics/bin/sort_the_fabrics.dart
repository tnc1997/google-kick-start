import 'dart:io';

import 'package:sort_the_fabrics/sort_the_fabrics.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final N = int.parse(stdin.readLineSync());

    final C = <MapEntry<int, String>>[];
    final D = <MapEntry<int, int>>[];

    for (var i = 0; i < N; i++) {
      final CDU = stdin.readLineSync().split(' ');

      C.add(MapEntry(int.parse(CDU[2]), CDU[0]));
      D.add(MapEntry(int.parse(CDU[2]), int.parse(CDU[1])));
    }

    final y = getNoOfFabricsInSamePosition(C, D);

    print('Case #$x: $y');
  }
}
