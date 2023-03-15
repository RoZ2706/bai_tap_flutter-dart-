import 'dart:io';

void area(double n) {
  double s = n * n * 3.1416;
  print(s);
}

void main() {
  print("Nhập bán kính: ");
  double n = double.parse(stdin.readLineSync()!);
  print("Diện tích hình tròn: ");
  area(n);
}
