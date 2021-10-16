import 'package:staying_hydrated/staying_hydrated.dart';
import 'package:test/test.dart';

void main() {
  test('calculateWaterBottleCoordinates', () {
    expect(
      calculateWaterBottleCoordinates([
        Furniture(Coordinates(0, 0), Coordinates(1, 1)),
        Furniture(Coordinates(2, 3), Coordinates(4, 6)),
        Furniture(Coordinates(0, 3), Coordinates(5, 9)),
      ]),
      Coordinates(1, 3),
    );

    expect(
      calculateWaterBottleCoordinates([
        Furniture(Coordinates(0, 0), Coordinates(1, 1)),
      ]),
      Coordinates(0, 0),
    );
  });
}
