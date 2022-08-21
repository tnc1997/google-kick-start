import 'dart:io';

import 'package:students_and_mentors/students_and_mentors.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final N = int.parse(stdin.readLineSync());

    final R = stdin
        .readLineSync()
        .split(' ')
        .map((input) => int.parse(input))
        .toList();

    final y = getStudentMentors(R);

    print('Case #$x: ${y.join(' ')}');
  }
}
