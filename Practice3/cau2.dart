import 'dart:io';

void evennumbers(int a, int b) {
  for (int i = a; i <= b; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void main() {
  print("Nhập x:");
  int? x = int.parse(stdin.readLineSync()!);
  print("Nhập y:");
  int? y = int.parse(stdin.readLineSync()!);
  print("Các số chẵn: ");
  evennumbers(x, y);
}
