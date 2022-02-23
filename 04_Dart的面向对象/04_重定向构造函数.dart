void main(List<String> args) {
  var p = Person("123");
  print(p.age);
}

class Person {
  String? name;
  int? age;

  // Person({this.name, this.age});
  Person(String name) : this._internal(name, 10);

  Person._internal(this.name, this.age);
}
