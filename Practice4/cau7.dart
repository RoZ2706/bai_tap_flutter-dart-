void main() {
  var people = {
    'name': 'Vũ',
    'phone': '0987123456',
  };
  print(people.keys.where((element) => element.length == 4));
}
