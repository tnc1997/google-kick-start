import 'package:test/test.dart';
import 'package:trash_bins/trash_bins.dart';

void main() {
  test('calculateSumOfDistances', () {
    expect(
      calculateSumOfDistances([1, 1, 1]),
      0,
    );

    expect(
      calculateSumOfDistances([1, 0, 0, 1, 0, 0]),
      5,
    );
  });
}
