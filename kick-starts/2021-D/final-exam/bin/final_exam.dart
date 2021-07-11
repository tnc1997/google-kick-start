import 'dart:io';

import 'package:final_exam/final_exam.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final NM = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final AB = <Tuple2<int, int>>[];

    for (var i = 0; i < NM[0]; i++) {
      AB.add(Tuple2.fromList(stdin
          .readLineSync()
          .split(' ')
          .map((input) => int.parse(input))
          .toList()));
    }

    final S = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final y = calculateStudentProblems(AB, S).join(' ');

    print('Case #$x: $y');
  }
}
