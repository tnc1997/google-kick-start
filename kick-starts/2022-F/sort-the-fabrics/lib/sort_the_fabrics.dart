int getNoOfFabricsInSamePosition(
  List<MapEntry<num, String>> C,
  List<MapEntry<num, num>> D,
) {
  int compare<K extends Comparable<K>, V extends Comparable<V>>(
    MapEntry<K, V> a,
    MapEntry<K, V> b,
  ) {
    var i = a.value.compareTo(b.value);

    if (i == 0) {
      i = a.key.compareTo(b.key);
    }

    return i;
  }

  C.sort(compare);
  D.sort(compare);

  var y = 0;

  for (var i = 0; i < C.length && i < D.length; i++) {
    if (C[i].key == D[i].key) {
      y++;
    }
  }

  return y;
}
