void main(List<String> args) {
  final p = Person();
  p.name = "123";
  print(p.name);
}

class Person {
  String name = "";
  set setName(String name) {
    this.name = name;
  }

  String get getName {
    return name;
  }
}
