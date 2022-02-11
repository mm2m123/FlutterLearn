void main(List<String> args) {
//??= 左边的变量没有值为空的话就执行,把右边的值赋到左边,有值则不操作
  var name = null;
  name ??= "lll";
  print(name);

  // ?? 前面变量有值用前面的,没有就用后面的
  var a = "123";
  var b = a ?? "1233";
}
