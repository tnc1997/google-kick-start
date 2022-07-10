import 'package:image_labeler/image_labeler.dart';
import 'package:test/test.dart';

void main() {
  test('getMaxSuccessMetric', () {
    expect(
      getMaxSuccessMetric(
        [11, 24, 10],
        2,
      ),
      34.5,
    );

    expect(
      getMaxSuccessMetric(
        [6, 2, 5, 1, 9],
        1,
      ),
      5,
    );
  });
}
