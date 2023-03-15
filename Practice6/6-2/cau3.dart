class Camera {
  String? id;
  String? brand;
  String? color;
  int? prize;
  Camera(this.id, this.brand, this.color, this.prize);
  String get ID => this.id!;
  set ID(String ID) => id = ID;
  String get Brand => this.brand!;
  set Brand(String Brand) => brand = Brand;
  String get Color => this.color!;
  set Color(String Color) => color = Color;
  int get Prize => this.prize!;
  set Prize(int Prize) => prize = Prize;
  void display() {
    print('ID: $id, Thương hiệu: $brand, Màu sắc: $color, Giá thành: $prize');
  }
}

void main() {
  Camera c1 = Camera('c1', 'Canon', 'Black', 300);
  Camera c2 = Camera('c2', 'Nikon', 'White', 540);
  Camera c3 = Camera('c3', 'Cam Iphone', 'Tím mông mer', 700);
  c1.display();
  c2.display();
  c3.display();
}
