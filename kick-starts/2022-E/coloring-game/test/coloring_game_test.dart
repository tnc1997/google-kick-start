import 'package:coloring_game/coloring_game.dart';
import 'package:test/test.dart';

void main() {
  test('getMaxAchievableScore', () {
    expect(
      getMaxAchievableScore(1),
      1,
    );

    expect(
      getMaxAchievableScore(3),
      1,
    );

    expect(
      getMaxAchievableScore(6),
      2,
    );
  });
}
