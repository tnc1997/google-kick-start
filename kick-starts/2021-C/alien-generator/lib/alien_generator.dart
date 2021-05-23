import 'dart:math';

int calculateNumberOfPossibleValues(int G) {
  var numberOfPossibleValues = 0;

  for (var K in List.generate(G, (index) => index + 1)) {
    // Sn = (n / 2) * (2a + (n − 1) * d)
    // G = (n / 2) * (2K + (n − 1))
    // G = (n^2 + 2Kn - n) / 2
    // 2G = n^2 + 2Kn - n
    // n^2 + 2Kn - n - 2G = 0

    final a = 1;
    final b = K * 2 - 1;
    final c = -G * 2;

    final one = (-b + sqrt(pow(b, 2) - 4 * a * c)) / 2 * a;
    final two = (-b - sqrt(pow(b, 2) - 4 * a * c)) / 2 * a;

    if (one > 0 && one % 1 == 0) {
      numberOfPossibleValues++;
    }

    if (two > 0 && two % 1 == 0) {
      numberOfPossibleValues++;
    }
  }

  return numberOfPossibleValues;
}
