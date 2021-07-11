int calculateMaximumNumberOfArithmeticProgressions(List<List<int>> G) {
  final topLeft = G[0][0];
  final topCentre = G[0][1];
  final topRight = G[0][2];
  final middleLeft = G[1][0];
  final middleRight = G[1][1];
  final bottomLeft = G[2][0];
  final bottomCentre = G[2][1];
  final bottomRight = G[2][2];

  final a = (topCentre + bottomCentre) / 2;
  final b = (middleLeft + middleRight) / 2;
  final c = (topLeft + bottomRight) / 2;
  final d = (topRight + bottomLeft) / 2;

  final map = <double, int>{};

  var y = 0;

  for (var value in [a, b, c, d]) {
    if (value % 1 == 0) {
      map.update(value, (value) => value + 1, ifAbsent: () => 1);

      if (map[value] > y) {
        y = map[value];
      }
    }
  }

  if (topRight - topCentre == topCentre - topLeft) {
    y++;
  }

  if (bottomRight - middleRight == middleRight - topRight) {
    y++;
  }

  if (bottomLeft - bottomCentre == bottomCentre - bottomRight) {
    y++;
  }

  if (topLeft - middleLeft == middleLeft - bottomLeft) {
    y++;
  }

  return y;
}
