void main(List<String> args) {
  test2((num1, num2) {
    print(num1);
    return num1 + num2;
  });
}

// void test(int foo(int num1, int num2)) {
//   final a = foo(20, 30);
//   print(a);
// }

typedef Calculate = int Function(int num1, int num2);

void test2(Calculate calc) {
  calc(10, 20);
}
