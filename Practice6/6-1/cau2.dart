class House {
  String? id;
  String? name;
  int? prize;

  House(String id, String name, int prize) {
    this.id = id;
    this.name = name;
    this.prize = prize;
  }
  void display() {
    print('ID: $id, Tên: $name, Giá: $prize');
  }
}

void main() {
  House h1 = House('h1', 'Lầu 6 tòa 9 khu chung cư Hoàng Huy Lạch Tray', 100);
  House h2 = House('h2', '13-B5 Khu Mahathan Vinhome Imperial', 300);
  House h3 = House('h3', 'Số nhà 117 khu villa Nhà Bè', 250);
  List<House> houses = [];
  houses.addAll([h1, h2, h3]);
  houses.forEach((element) => element.display());
}
