import 'package:final_exam/final_exam.dart';
import 'package:test/test.dart';

void main() {
  test('calculateStudentProblems', () {
    expect(
      calculateStudentProblems(
        [
          Tuple2.fromList([1, 2]),
          Tuple2.fromList([6, 7]),
          Tuple2.fromList([9, 12]),
          Tuple2.fromList([24, 24]),
          Tuple2.fromList([41, 50]),
        ],
        [14, 24, 24, 4],
      ),
      [12, 24, 11, 2],
    );

    expect(
      calculateStudentProblems(
        [
          Tuple2.fromList([42, 42]),
        ],
        [24],
      ),
      [42],
    );
  });
}
