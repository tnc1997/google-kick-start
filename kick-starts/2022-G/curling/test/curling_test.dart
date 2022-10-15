import 'package:curling/curling.dart';
import 'package:test/test.dart';

void main() {
  test('getTeamScores', () {
    expect(
      getTeamScores(
        [1, 5],
        [
          [1, -1],
          [6, 1],
          [0, 6],
          [-5, 0],
        ],
        [],
      ),
      [3, 0],
    );

    expect(
      getTeamScores(
        [10, 100],
        [
          [-3, -4],
          [200, 200],
        ],
        [],
      ),
      [1, 0],
    );

    expect(
      getTeamScores(
        [1, 5],
        [
          [1, 0],
          [-3, 0],
        ],
        [
          [0, 2],
        ],
      ),
      [1, 0],
    );

    expect(
      getTeamScores(
        [10, 50],
        [
          [-40, -31],
          [-35, 70],
        ],
        [
          [59, 0],
          [-10, 0],
          [30, 40],
        ],
      ),
      [0, 2],
    );
  });
}
