class Point {
  int x = 0;
  int y = 0;

  void pSet(int _x, int _y) {
    this.x = _x;
    this.y = _y;
  }

  void pGet() {
    print("${this.x},${this.y}");
  }

  Map<String, int> pGet2() {
    return {'x': this.x, 'y': this.y};
  }

  Point(int _x, int _y) {
    this.x = _x;
    this.y = _y;
  }
}

void main() {
  Point pointA = Point(10, 20);
  pointA.pGet();
  pointA.pSet(5, 1);
  pointA.pGet();
  Map<String, int> pA;
  pA = pointA.pGet2();
  print(pA);
  print("x: ${pA['x']}\t\ty: ${pA['y']}");
}

