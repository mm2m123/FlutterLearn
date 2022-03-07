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
    return StackDemo();
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topRight,
      children: [
        Image.asset("assets/image/111.png"),
        Positioned(
          bottom: -40,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
        ),
        Positioned(
            left: 10,
            // bottom: -8,
            child: Text("")
        )
      ],
    );
  }
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Container(
          width: 80,
          height: 60,
          color: Colors.red,
          child: Text("data"),
        ),
        Container(
          width: 120,
          height: 100,
          color: Colors.green,
          child: Text("hhhhh"),
        ),
        Container(
          width: 90,
          height: 80,
          color: Colors.black,
          child: Text("jjjjj"),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.blue,
          child: Text("ggggg"),
        ),
      ],
    );
  }
}

class RowDemo2 extends StatelessWidget {
  const RowDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandedDemo();
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Expanded(
              child: Container(width: 50, height: 60, color: Colors.red)),
          Expanded(
              child: Container(width: 120, height: 100, color: Colors.green)),
          Container(width: 190, height: 80, color: Colors.black),
          Container(width: 50, height: 120, color: Colors.blue),
        ],
      ),
    );
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Container(
            width: 80,
            height: 60,
            color: Colors.red,
            child: const Text("data"),
          ),
          Container(
            width: 120,
            height: 100,
            color: Colors.green,
            child: const Text("hhhhh"),
          ),
          Container(
            width: 90,
            height: 80,
            color: Colors.black,
            child: const Text("jjjjj"),
          ),
          Container(
            width: 50,
            height: 120,
            color: Colors.blue,
            child: const Text("ggggg"),
          ),
        ],
      ),
    );
  }
}
