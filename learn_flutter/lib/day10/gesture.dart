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
    return GestureDetector(
      onDoubleTap: () {
        print("onDoubleTaponDoubleTaponDoubleTap");
      },
      onForcePressPeak: (pressDetails) {
        print(
            "onForcePressPeakonForcePressPeakonForcePressPeak${pressDetails.localPosition}");
      },
      onForcePressEnd: (pressDetails) {
        print(
            "onForcePressEndonForcePressEndonForcePressEnd${pressDetails.globalPosition}");
      },
      onLongPress: () {
        print("onLongPressonLongPressonLongPress");
      },
      child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          )),
    );
  }
}
