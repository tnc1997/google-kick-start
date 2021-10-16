import 'package:dogs_and_cats/dogs_and_cats.dart';
import 'package:test/test.dart';

void main() {
  test('canAllTheDogsBeFed', () {
    expect(
      canAllTheDogsBeFed(6, 10, 4, 0, 'CCDCDD'),
      isTrue,
    );

    expect(
      canAllTheDogsBeFed(4, 1, 2, 0, 'CCCC'),
      isTrue,
    );

    expect(
      canAllTheDogsBeFed(4, 2, 1, 0, 'DCCD'),
      isFalse,
    );

    expect(
      canAllTheDogsBeFed(12, 4, 2, 2, 'CDCCCDCCDCDC'),
      isTrue,
    );

    expect(
      canAllTheDogsBeFed(8, 2, 1, 3, 'DCCCCCDC'),
      isFalse,
    );
  });
}
