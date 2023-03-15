import 'dart:io';
import 'dart:math';
void main(){
    print("Nhập số cần tính căn bậc 2:");
    int? x = int.parse(stdin.readLineSync()!);
    double y = sqrt(x);
    print("Căn bậc 2 của $x: $y");
}