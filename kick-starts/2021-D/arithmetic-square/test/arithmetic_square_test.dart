import 'package:arithmetic_square/arithmetic_square.dart';
import 'package:test/test.dart';

void main() {
  test('calculateMaximumNumberOfArithmeticProgressions', () {
    expect(
      calculateMaximumNumberOfArithmeticProgressions([
        [3, 4, 11],
        [10, 9],
        [-1, 6, 7],
      ]),
      4,
    );

    expect(
      calculateMaximumNumberOfArithmeticProgressions([
        [4, 1, 6],
        [3, 5],
        [2, 5, 6],
      ]),
      3,
    );

    expect(
      calculateMaximumNumberOfArithmeticProgressions([
        [9, 9, 9],
        [9, 9],
        [9, 9, 9],
      ]),
      8,
    );
  });
}
