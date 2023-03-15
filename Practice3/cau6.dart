import 'dart:io';

void reverse(String s) {
  print(s.split('').reversed.join());
}

void main() {
  print("Nhập chuỗi: ");
  String? s = stdin.readLineSync()!;
  print("Chuỗi đã đảo ngược: ");
  reverse(s);
}
