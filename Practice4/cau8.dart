import 'dart:io';

void main() {
  while (true) {
    print("1.Them\r\n2.Xoa\r\n3.Xem\r\n0.Ket thuc");
    int? x = int.parse(stdin.readLineSync()!);
    List<String> to_do_list = [];
    if (x != 0) {
      switch (x) {
        case 1:
          print("Nhập công việc cần thêm: ");
          String? task = stdin.readLineSync()!;
          to_do_list.add(task);
          break;
        case 2:
          print("Nhập công việc cần xóa: ");
          String? task = stdin.readLineSync()!;
          to_do_list.removeWhere((element) => element.compareTo(task) == 0);
          break;
        case 3:
          print("Danh sách các công việc: ");
          to_do_list.forEach((element) {
            print(element);
          });
          break;
      }
    } else {
      break;
    }
  }
}
