import 'dart:io';

void main() {
  print("Nhập n:");
  int? n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print("Tổng từ 1 đến N: $sum");
}
