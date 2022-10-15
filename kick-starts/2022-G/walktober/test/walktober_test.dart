import 'package:test/test.dart';
import 'package:walktober/walktober.dart';

void main() {
  test('getMinNoOfAdditionalSteps', () {
    expect(
      getMinNoOfAdditionalSteps(
        2,
        3,
        1,
        [
          [1000, 2000, 3000],
          [1500, 1500, 3000],
        ],
      ),
      500,
    );

    expect(
      getMinNoOfAdditionalSteps(
        3,
        2,
        3,
        [
          [1000, 2000],
          [1500, 4000],
          [500, 4000],
        ],
      ),
      1000,
    );

    expect(
      getMinNoOfAdditionalSteps(
        3,
        3,
        2,
        [
          [1000, 2000, 1000],
          [1500, 2000, 1000],
          [500, 4000, 1500],
        ],
      ),
      2500,
    );
  });
}
