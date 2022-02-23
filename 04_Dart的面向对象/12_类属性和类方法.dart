void main(List<String> args) {
  print(Person.a);
  print(Person.ppp());
}

class Person {
  String name = "";
  static String a = "1";

  static ppp() {
    print("object");
  }
}
