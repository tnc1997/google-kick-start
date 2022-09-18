import 'package:sort_the_fabrics/sort_the_fabrics.dart';
import 'package:test/test.dart';

void main() {
  test('getNoOfFabricsInSamePosition', () {
    expect(
      getNoOfFabricsInSamePosition(
        [
          MapEntry(1, 'blue'),
          MapEntry(2, 'yellow'),
        ],
        [
          MapEntry(1, 2),
          MapEntry(2, 1),
        ],
      ),
      0,
    );

    expect(
      getNoOfFabricsInSamePosition(
        [
          MapEntry(1, 'blue'),
          MapEntry(2, 'brown'),
        ],
        [
          MapEntry(1, 2),
          MapEntry(2, 2),
        ],
      ),
      2,
    );

    expect(
      getNoOfFabricsInSamePosition(
        [
          MapEntry(1, 'red'),
        ],
        [
          MapEntry(1, 2),
        ],
      ),
      1,
    );
  });
}
