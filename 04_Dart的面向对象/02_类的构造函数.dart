void main(List<String> args) {
  var p = Person.withNameAgeAndHeight("name", 123, 123);
}

class Person {
  String? name;
  int? age;
  double? height;

  Person(this.name, this.age);
  Person.withNameAgeAndHeight(this.name, this.age, this.height);
}
