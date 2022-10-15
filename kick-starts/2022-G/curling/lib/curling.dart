import 'dart:math';

List<int> getTeamScores(List<int> R, List<List<int>> XY, List<List<int>> ZW) {
  num red = double.infinity;
  final reds = <num>[];

  for (var i = 0; i < XY.length; i++) {
    final distance = hypot(XY[i][0], XY[i][1]);

    if (distance <= R[0] + R[1]) {
      if (distance < red) {
        red = distance;
      }

      reds.add(distance);
    }
  }

  num yellow = double.infinity;
  final yellows = <num>[];

  for (var i = 0; i < ZW.length; i++) {
    final distance = hypot(ZW[i][0], ZW[i][1]);

    if (distance <= R[0] + R[1]) {
      if (distance < yellow) {
        yellow = distance;
      }

      yellows.add(distance);
    }
  }

  return red < yellow
      ? [reds.where((red) => red < yellow).length, 0]
      : [0, yellows.where((yellow) => yellow < red).length];
}

num hypot(num x, num y) => sqrt(pow(x, 2) + pow(y, 2));
