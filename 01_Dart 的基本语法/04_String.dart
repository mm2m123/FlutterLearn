void main(List<String> args) {
  var str1 = '11';
  var str2 = "";
  var str3 = """ dd 
  dd""";
  print(str3);

  var message = "kk${str3.runtimeType} &&& $str1";
  print(message);

  //$ + 变量 可以省略大括号
}
