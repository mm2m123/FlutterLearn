void main(List<String> args) {}

//抽象类不能实例化
abstract class Shape {
  void getArea();
  String getInfo() {
    return "132";
  }

  factory Shape() {
    return Rectangle();
  }
}

class Rectangle extends Shape {
  @override
  void getArea() {
    // TODO: implement getArea
  }
}
