void main(List<String> args) {
  var p = Person()
    ..age = "123"
    ..eat()
    ..run();
}

class Person {
  String? name;
  var age;
  void run() {
    print("object");
  }

  void eat() {
    print("object2");
  }
}
