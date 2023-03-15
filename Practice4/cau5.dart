void main() {
  List<String> friends = ['abc', 'xyz', 'axz', 'xya', 'bzy', 'bac', 'aaa'];
  List<String> a = friends.where((x) => x.startsWith('a')).toList();
  print(a);
}
