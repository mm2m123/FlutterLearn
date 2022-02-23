void main(List<String> args) {
  var p1 = Person("1");
  var p2 = Person("1");
  print(identical(p1, p2));
}

class Person {
  final String name;
  const Person(this.name);
}
