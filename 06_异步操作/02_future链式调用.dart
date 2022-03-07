import 'dart:io';

void main(List<String> args) {
  print("Start");
  Future(() {
    sleep(Duration(seconds: 3));
    return "111";
  })
      .then((value) {
        print(value);
        sleep(Duration(seconds: 1));
        return "2222";
      })
      .then((value) => print(value))
      .whenComplete(() => print("object"));
  print("END");
}
