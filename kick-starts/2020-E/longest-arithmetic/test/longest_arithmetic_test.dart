import 'package:longest_arithmetic/longest_arithmetic.dart';
import 'package:test/test.dart';

void main() {
  test('getLongestContiguousArithmeticSublist', () {
    expect(
      getLongestContiguousArithmeticSublist([10, 7, 4, 6, 8, 10, 11]),
      4,
    );

    expect(
      getLongestContiguousArithmeticSublist([9, 7, 5, 3]),
      4,
    );

    expect(
      getLongestContiguousArithmeticSublist([5, 5, 4, 5, 5, 5, 4, 5, 6]),
      3,
    );

    expect(
      getLongestContiguousArithmeticSublist([5, 4, 3, 2, 1, 2, 3, 4, 5, 6]),
      6,
    );
  });
}
