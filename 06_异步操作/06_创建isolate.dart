import 'dart:isolate';

void main(List<String> args) {
  print("111111");
  Isolate.spawn(calc, 100); //???????
  print("222222");
}

void calc() {
  var total = 0;
  for (var i = 0; i < 100; i++) {
    total += 1;
  }
  print(total);
}
