import 'dart:io';

void main(List<String> args) {
  print("Start");
//发送一个网络请求
  var result = getNetworkData();

  result.then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  }).whenComplete(() {
    print("gangggggggg");
  });

  print("end");
}

//模拟一个
Future getNetworkData() {
  return Future(() {
    sleep(Duration(seconds: 3));
    // return "";
    throw Exception("ERROR");
  });
  // sleep(Duration(seconds: 5));
  // return "";
}
