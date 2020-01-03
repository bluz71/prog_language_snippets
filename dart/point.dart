import 'dart:math';

class Point {
  num x, y;

  Point(this.x, this.y);

  // Named constructor.
  Point.origin() {
    x = 0;
    y = 0;
  }

  num distanceTo(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var point = Point(10, 20);
  assert(point.x == 10);
  assert(point.y == 20);

  var point2 = Point.origin();
  assert(point2.x == 0);
  assert(point2.y == 0);
}
