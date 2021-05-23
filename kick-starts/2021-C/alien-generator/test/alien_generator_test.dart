import 'package:alien_generator/alien_generator.dart';
import 'package:test/test.dart';

void main() {
  test('calculateNumberOfPossibleValues', () {
    expect(
      calculateNumberOfPossibleValues(10),
      2,
    );

    expect(
      calculateNumberOfPossibleValues(125),
      4,
    );
  });
}
