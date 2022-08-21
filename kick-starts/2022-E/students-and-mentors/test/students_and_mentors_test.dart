import 'package:students_and_mentors/students_and_mentors.dart';
import 'package:test/test.dart';

void main() {
  test('getStudentMentors', () {
    expect(
      getStudentMentors([2000, 1500, 1900]),
      [1900, 2000, 2000],
    );

    expect(
      getStudentMentors([1000, 600, 1000, 2300, 1800]),
      [1800, 1000, 1800, 1800, 2300],
    );

    expect(
      getStudentMentors([2500, 1200]),
      [1200, -1],
    );
  });
}
