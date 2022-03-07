import 'dart:math';

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

class ZYCHomePage extends StatefulWidget {
  const ZYCHomePage({Key? key}) : super(key: key);

  @override
  State<ZYCHomePage> createState() => _ZYCHomePageState();
}

class _ZYCHomePageState extends State<ZYCHomePage> {
  ScrollController scrollController =
  ScrollController(initialScrollOffset: 100);
  bool isShowButton = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      setState(() {
        if (scrollController.offset >= 1000) {
          isShowButton = true;
        }else{
          isShowButton = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础widget"),
      ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification){
          print("");
          if (notification is ScrollStartNotification) {
            print("111");
          }else if (notification is ScrollUpdateNotification) {
            print("2222");
          }else if (notification is ScrollEndNotification) {
            print("3333");
          }
          return true;
        },
        child: ListView.builder(
            controller: scrollController,
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.people),
                title: Text(""),
              );
            }),
      ),
      floatingActionButton: isShowButton?FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          scrollController.animateTo(0, duration: Duration(milliseconds: 500), curve: Curves.bounceIn);
        },
      ):null,
    );
  }
}
