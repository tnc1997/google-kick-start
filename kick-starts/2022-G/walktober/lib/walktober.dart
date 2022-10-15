import 'dart:math' as math;

int getMinNoOfAdditionalSteps(int M, int N, int P, List<List<int>> S) {
  var y = 0;

  for (var i = 0; i < N; i++) {
    final max = S.map((s) => s[i]).reduce(math.max);

    if (S[P - 1][i] < max) {
      y += max - S[P - 1][i];
    }
  }

  return y;
}
