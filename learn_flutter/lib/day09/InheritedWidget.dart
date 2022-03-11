import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter/day03/02_%E6%96%87%E6%9C%ACwidget.dart';
import 'package:dio/dio.dart';
import 'package:learn_flutter/service/http_request.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ZYCHomePage());
  }
}

class ZYCHomePage extends StatefulWidget {
  @override
  State<ZYCHomePage> createState() => _ZYCHomePageState();
}

class _ZYCHomePageState extends State<ZYCHomePage> {
  int _count = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础widget"),
      ),
      body: ZYCCounterWidget(
        _count,
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ZYCShowData01(),
              ZYCShowData02(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}

class ZYCCounterWidget extends InheritedWidget {
  // final int counter = 10;
  int data;

  ZYCCounterWidget(this.data, Widget child) : super(child: child);

  static ZYCCounterWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(covariant ZYCCounterWidget oldWidget) {
    return oldWidget.data != data;
  }
}

class ZYCShowData01 extends StatelessWidget {
  const ZYCShowData01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? count = ZYCCounterWidget.of(context)?.data;
    return Card(
      color: Colors.red,
      child: Text("${count}"),
    );
  }
}

class ZYCShowData02 extends StatelessWidget {
  const ZYCShowData02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? count = ZYCCounterWidget.of(context)?.data;
    return Container(
      color: Colors.green,
      child: Text("${count}"),
    );
  }
}
