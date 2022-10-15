import 'dart:io';

import 'package:walktober/walktober.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final MNP = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final S = <List<int>>[];

    for (var i = 0; i < MNP[0]; i++) {
      S.add(stdin.readLineSync().split(' ').map(int.parse).toList());
    }

    final y = getMinNoOfAdditionalSteps(MNP[0], MNP[1], MNP[2], S);

    print('Case #$x: $y');
  }
}
