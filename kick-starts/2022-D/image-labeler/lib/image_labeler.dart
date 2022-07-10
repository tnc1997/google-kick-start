num getMaxSuccessMetric(List<int> A, int M) {
  A.sort((a, b) => b - a);

  final metrics = <num>[];

  for (var i = 0; i < M - 1; i++) {
    metrics.add(A[i]);
  }

  final A1 = A.sublist(M - 1);

  if (A1.length % 2 == 0) {
    metrics.add((A1[A1.length ~/ 2 - 1] + A1[A1.length ~/ 2]) / 2);
  } else {
    metrics.add(A1[(A1.length / 2).ceil() - 1]);
  }

  return metrics.reduce((value, element) => value + element);
}
