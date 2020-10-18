import 'package:countdown/countdown.dart';
import 'package:test/test.dart';

void main() {
  test('getNoOfKCountdowns', () {
    expect(
      getNoOfKCountdowns(3, [1, 2, 3, 7, 9, 3, 2, 1, 8, 3, 2, 1]),
      2,
    );

    expect(
      getNoOfKCountdowns(2, [101, 100, 99, 98]),
      0,
    );

    expect(
      getNoOfKCountdowns(6, [100, 7, 6, 5, 4, 3, 2, 1, 100]),
      1,
    );
  });
}
