import '../03_运算符/02_级联运算符.dart';

void main(List<String> args) {
  final p1 = Person.withName("123");
  final p2 = Person.withName("123");

  print(identical(p1, p2));
}

// class Person {
//   final String name;
//   // String? color;

//   const Person(this.name);
// }

class Person {
  String? name;
  String? color;

  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _colorCache = {};

  Person(this.name, this.color);

  factory Person.withName(String name) {
    if (_nameCache.containsKey(name)) {
      return _nameCache[name];
    } else {
      final p = Person(name, "default");
      _nameCache[name] = p;
      return p;
    }
  }

  factory Person.withColor(String color) {
    if (_colorCache.containsKey(color)) {
      return _colorCache[color];
    } else {
      final p = Person("default", color);
      _colorCache[color] = p;
      return p;
    }
  }
}
