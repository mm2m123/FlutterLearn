void main(List<String> args) {
  String name = "123";
//变量
  var a = "222";
//常量
  final b = 20;
//常量
  const c = "ccc";
//const 必须在编译期间赋值常量值 final 可以在运行时赋常量值
  final date1 = DateTime.now();

  // final p1 = Person();
  // final p2 = Person();
  // print(identical(p1, p2));
  const p1 = const Person("name");
  const p2 = const Person("");
  print(identical(p1, p2));
}

class Person {
  final String name;
  const Person(this.name);
}
