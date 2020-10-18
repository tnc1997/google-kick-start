int getNoOfLuckyFragments(String s) {
  final kicks = <int>[];
  final starts = <int>[];

  for (var i = 0; i < s.length; i++) {
    if (i + 3 < s.length) {
      if (s.substring(i, i + 4) == 'KICK') {
        kicks.add(i);
      }
    }

    if (i + 4 < s.length) {
      if (s.substring(i, i + 5) == 'START') {
        starts.add(i);
      }
    }
  }

  return kicks.fold(
    0,
    (y, kick) => y + starts.where((start) => start > kick).length,
  );
}
