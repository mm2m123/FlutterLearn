void main(List<String> args) {
//匿名函数
  test(() {
    print('object');
  });

  //箭头函数----函数体只有一行代码
  test(() => print("2"));
}

void test(Function fun) {
  fun();
}

void bar() {
  print("");
}
