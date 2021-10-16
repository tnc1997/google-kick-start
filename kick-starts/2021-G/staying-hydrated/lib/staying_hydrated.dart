Coordinates calculateWaterBottleCoordinates(List<Furniture> furnitures) {
  int minimumX;
  int maximumX;

  int minimumY;
  int maximumY;

  for (var furniture in furnitures) {
    if (minimumX == null || furniture.bottomLeft.x < minimumX) {
      minimumX = furniture.bottomLeft.x;
    }

    if (maximumX == null || furniture.topRight.x > maximumX) {
      maximumX = furniture.topRight.x;
    }

    if (minimumY == null || furniture.bottomLeft.y < minimumY) {
      minimumY = furniture.bottomLeft.y;
    }

    if (maximumY == null || furniture.topRight.y > maximumY) {
      maximumY = furniture.topRight.y;
    }
  }

  Coordinates coordinates;

  int minimumDistance;

  for (var x = minimumX; x < maximumX; x++) {
    for (var y = minimumY; y < maximumY; y++) {
      var currentDistance = 0;

      for (var furniture in furnitures) {
        currentDistance += furniture.calculateManhattanDistance(
          Coordinates(x, y),
        );
      }

      if (minimumDistance == null || currentDistance < minimumDistance) {
        minimumDistance = currentDistance;
        coordinates = Coordinates(x, y);
      }
    }
  }

  return coordinates;
}

/// Represents coordinates.
class Coordinates {
  /// Returns the x coordinate of the coordinates.
  final int x;

  /// Returns the y coordinate of the coordinates.
  final int y;

  /// Creates new coordinates with the specified x coordinate and y coordinate.
  const Coordinates(this.x, this.y);

  /// Creates new coordinates with the specified list [items].
  factory Coordinates.fromList(List<int> items) {
    if (items.length != 2) {
      throw ArgumentError('items must have length 2');
    }

    return Coordinates(items[0], items[1]);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Coordinates &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  String toString() => '[$x, $y]';
}

/// Represents a piece of furniture.
class Furniture {
  /// Returns the bottom left coordinates of the piece of furniture.
  final Coordinates bottomLeft;

  /// Returns the top right coordinates of the piece of furniture.
  final Coordinates topRight;

  /// Creates a new piece of furniture with the specified bottom left coordinates and top right coordinates.
  const Furniture(this.bottomLeft, this.topRight);

  /// Creates a new piece of furniture with the specified list [items].
  factory Furniture.fromList(List<int> items) {
    if (items.length != 4) {
      throw ArgumentError('items must have length 4');
    }

    return Furniture(
      Coordinates(items[0], items[1]),
      Coordinates(items[2], items[3]),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Furniture &&
          runtimeType == other.runtimeType &&
          bottomLeft == other.bottomLeft &&
          topRight == other.topRight;

  @override
  int get hashCode => bottomLeft.hashCode ^ topRight.hashCode;

  @override
  String toString() => '[$bottomLeft, $topRight]';

  /// Returns the Manhattan distance between this piece of furniture and the coordinates.
  int calculateManhattanDistance(Coordinates coordinates) {
    var x1 = 0;
    var x2 = 0;

    var y1 = 0;
    var y2 = 0;

    if (doesEncompassCoordinates(coordinates)) {
      return 0;
    } else if (bottomLeft.x <= coordinates.x && coordinates.x <= topRight.x) {
      y1 = (bottomLeft.y - coordinates.y).abs();
      y2 = (topRight.y - coordinates.y).abs();
    } else if (bottomLeft.y <= coordinates.y && coordinates.y <= topRight.y) {
      x1 = (bottomLeft.x - coordinates.x).abs();
      x2 = (topRight.x - coordinates.x).abs();
    } else {
      x1 = (bottomLeft.x - coordinates.x).abs();
      x2 = (topRight.x - coordinates.x).abs();

      y1 = (bottomLeft.y - coordinates.y).abs();
      y2 = (topRight.y - coordinates.y).abs();
    }

    return (x1 < x2 ? x1 : x2) + (y1 < y2 ? y1 : y2);
  }

  /// Returns true if this piece of furniture encompasses the coordinates; otherwise, false.
  bool doesEncompassCoordinates(Coordinates coordinates) =>
      bottomLeft.x <= coordinates.x &&
      coordinates.x <= topRight.x &&
      bottomLeft.y <= coordinates.y &&
      coordinates.y <= topRight.y;
}
