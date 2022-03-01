import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ZYCHomePage()
    );
  }
}

class ZYCHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
        ),
        body: ZYCContentBody()
    );
  }
}

class ZYCContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ZYCContentBodyState();
  }
}

class ZYCContentBodyState extends State<ZYCContentBody> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value){
                setState(() {
                  flag = value!;
                });
              }),
          Text("Hello bro"),
          Text("ÔÔÓ")
        ],
      ),
    );
  }

}