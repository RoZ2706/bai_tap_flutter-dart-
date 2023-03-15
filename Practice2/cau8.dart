import 'dart:io';

void main() {
  print("1. Tính toán\r\n0.Kết thúc");
  int? x = int.parse(stdin.readLineSync()!);
  do {
    print("Nhập x:");
    int? x = int.parse(stdin.readLineSync()!);
    print("Nhập y:");
    int? y = int.parse(stdin.readLineSync()!);
    print("1. Cong\r\n2.Tru\r\n3.Nhan\r\n4.Chia");
    int? f = int.parse(stdin.readLineSync()!);
    var kqua;
    switch (f) {
      case 1:
        kqua = x + y;
        print("$x + $y = $kqua");
        break;
      case 2:
        kqua = x - y;
        print("$x - $y = $kqua");
        break;
      case 3:
        kqua = x * y;
        print("$x * $y = $kqua");
        break;
      case 4:
        kqua = x / y;
        print("$x / $y = $kqua");
        break;
      default:
        print("Lỗi");
        break;
    }
    print("1. Tính toán\r\n0.Kết thúc");
    x = int.parse(stdin.readLineSync()!);
  } while (x != 0);
}
