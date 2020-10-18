import 'package:allocation/allocation.dart';
import 'package:test/test.dart';

void main() {
  test('getMaxNoOfHouses', () {
    expect(
      getMaxNoOfHouses(100, [20, 90, 40, 90]),
      2,
    );

    expect(
      getMaxNoOfHouses(50, [30, 30, 10, 10]),
      3,
    );

    expect(
      getMaxNoOfHouses(300, [999, 999, 999]),
      0,
    );
  });
}
