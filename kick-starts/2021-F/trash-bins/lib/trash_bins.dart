int calculateSumOfDistances(List<int> S) {
  var y = 0;

  for (var i = 0; i < S.length; i++) {
    if (S[i] == 1) {
      continue;
    }

    var j = 1;

    while (true) {
      if (i - j >= 0 && S[i - j] == 1) {
        break;
      }

      if (i + j < S.length && S[i + j] == 1) {
        break;
      }

      j++;
    }

    y += j;
  }

  return y;
}
