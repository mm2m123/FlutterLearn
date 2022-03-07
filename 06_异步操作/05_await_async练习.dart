import 'dart:io';

void main(List<String> args) {
  print("1111111");

  getData().then((value) {
    print(value);
  }).catchError((error) {});

  print("2222222");
}

Future getData() async {
  // getNetworkData("123").then((value) {
  //   print(value);
  //   return getNetworkData(value);
  // }).then((value) {
  //   print(value);
  //   return getNetworkData(value);
  // }).then((value) {
  //   print(value);
  //   return getNetworkData(value);
  // });

  var a = await getNetworkData("A1");
  var b = await getNetworkData(a);
  var c = await getNetworkData(b);
  print(c);
  return c;
}

Future getNetworkData(String arg) {
  return Future(() {
    sleep(Duration(seconds: 1));
    return "123 + $arg";
  });
}
