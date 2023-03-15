abstract class shape {
  double width;
  double height;
  shape(this.width, this.height);
  double area();
}

class triangle extends shape {
  triangle(double width, double height) : super(width, height);
  double area() {
    return (width * height) / 2;
  }
}

class rectangle extends shape {
  rectangle(double width, double height) : super(width, height);
  double area() {
    return width * height;
  }
}

void main() {
  triangle a = triangle(8, 5);
  rectangle b = rectangle(8, 5);
  print('Area of a: ${a.area()}');
  print('Area of b: ${b.area()}');
}
