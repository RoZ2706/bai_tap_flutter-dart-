import 'dart:io';
import 'dart:math';

double pytago(double a, double b) {
  double c = sqrt(a * a + b * b);
  return c;
}

void main() {
  print("Nhập x");
  double x = double.parse(stdin.readLineSync()!);
  print("Nhập y");
  double y = double.parse(stdin.readLineSync()!);
  double z = pytago(x, y);
  print("z = $z");
}
