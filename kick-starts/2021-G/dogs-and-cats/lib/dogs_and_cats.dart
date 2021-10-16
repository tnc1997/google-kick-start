bool canAllTheDogsBeFed(int N, int D, int C, int M, String S) {
  final indexes = <int>[];

  for (var i = 0; i < S.length; i++) {
    if (S[i] == 'D') {
      indexes.add(i);
    }
  }

  for (var i = 0; i < indexes.length; i++) {
    if (i == 0) {
      C -= indexes[i];
    } else {
      C -= indexes[i] - indexes[i - 1] - 1;
    }

    if (C < 0) {
      return false;
    }

    if (D == 0) {
      return false;
    }

    D--;

    C += M;
  }

  return true;
}
