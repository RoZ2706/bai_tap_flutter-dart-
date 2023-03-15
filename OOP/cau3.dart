class animal {
  String? name;
  int? age;
  void set_value(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

class zebra extends animal {
  @override
  void set_value(String name, int age) {
    super.set_value(name, age);
    print('name: $name, age: $age, food: plants');
  }
}

class dolphin extends animal {
  @override
  void set_value(String name, int age) {
    super.set_value(name, age);
    print('name: $name, age: $age, food: fish');
  }
}

void main() {
  zebra x = zebra();
  dolphin y = dolphin();
  print('Zebra:');
  x.set_value('P', 5);
  print('Dolphin:');
  y.set_value('R', 2);
}
