void main(List<String> args) {
  sayHello1("name");
  sayHello2("123", age: 1, height: 1);
}

void sayHello1(String name) {
  print(name);
}

void sayHello2(String name, {int age = 0, double height = 0}) {}
