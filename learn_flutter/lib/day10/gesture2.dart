import 'package:flutter/material.dart';
import 'package:learn_flutter/day03/02_%E6%96%87%E6%9C%ACwidget.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ZYCHomePage());
  }
}

class ZYCHomePage extends StatelessWidget {
  const ZYCHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础widget"),
      ),
      body: const ZYCHomeContent(),
    );
  }
}

class ZYCHomeContent extends StatefulWidget {
  const ZYCHomeContent({Key? key}) : super(key: key);

  @override
  _ZYCHomeContentState createState() => _ZYCHomeContentState();
}

class _ZYCHomeContentState extends State<ZYCHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
          onTap: () {
            print("11111111");
          },
          child: Container(
            height: 300,
            width: 300,
            color: Colors.brown,
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                print("22222222");
              },
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
            ),
          ),
        ));
  }
}
