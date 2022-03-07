void main(List<String> args) {
  Future.value("123").then((value) => print(value));
  Future.error("123").catchError((value) => print(value));
  Future.delayed(Duration(seconds: 1)).then((value) => print("object"));
}
