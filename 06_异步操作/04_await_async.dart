import 'dart:io';

void main(List<String> args) {
  print("start");
  var a = getNetworkData();
  print(a);
  print("end");
}

Future getNetworkData() async {
  await sleep(Duration(seconds: 3));
  return "DATA";
}
