void main(List<String> args) {
  final a = Superman();
  a.flying();
}

mixin Runner {
  void running() {}
}

mixin Flyer {
  void flying() {
    print("object");
  }
}

class Superman with Runner, Flyer {
  @override
  void running() {
    // TODO: implement running
  }

  // @override
  // void flying() {
  // TODO: implement flying
  // print("object2");
  // }
}
