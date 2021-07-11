Iterable<int> calculateStudentProblems(
  List<Tuple2<int, int>> AB,
  List<int> S,
) sync* {
  final problems = <int>{};

  for (var ab in AB) {
    for (var i = ab.item1; i <= ab.item2; i++) {
      problems.add(i);
    }
  }

  for (var s in S) {
    final y = problems.reduce((value, element) {
      final a = (element - s).abs();
      final b = (value - s).abs();

      if (a - b < 0) {
        return element;
      } else if (b - a < 0) {
        return value;
      } else {
        return element < value ? element : value;
      }
    });

    problems.remove(y);

    yield y;
  }
}

/// Represents a 2-tuple, or pair.
class Tuple2<T1, T2> {
  /// Returns the first item of the tuple.
  final T1 item1;

  /// Returns the second item of the tuple.
  final T2 item2;

  /// Creates a new tuple value with the specified items.
  const Tuple2(this.item1, this.item2);

  /// Creates a new tuple value with the specified list [items].
  factory Tuple2.fromList(List items) {
    if (items.length != 2) {
      throw ArgumentError('items must have length 2');
    }

    return Tuple2<T1, T2>(items[0] as T1, items[1] as T2);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tuple2 &&
          runtimeType == other.runtimeType &&
          item1 == other.item1 &&
          item2 == other.item2;

  @override
  int get hashCode => item1.hashCode ^ item2.hashCode;

  @override
  String toString() => '[$item1, $item2]';
}
