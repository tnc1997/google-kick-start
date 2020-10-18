int getLongestContiguousArithmeticSublist(List<int> list) {
  var y = 0;
  var z = 0;

  var previous = 0;

  for (var i = 0; i < list.length - 1; i++) {
    final current = list[i + 1] - list[i];

    if (current == previous) {
      z += 1;
    } else {
      z = 1;
    }

    if (z + 1 > y) {
      y = z + 1;
    }

    previous = current;
  }

  return y;
}
