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

class ZYCHomePage extends StatelessWidget {
  const ZYCHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("基础widget"),
      // ),
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
    return CustomScrollViewDemo2();
  }
}

class CustomScrollViewDemo2 extends StatelessWidget {
  const CustomScrollViewDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 350,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("qwe"),
            background: Image.asset("assets/image/111.png", fit: BoxFit.cover,),
          ),
        ),
        SliverGrid(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                  color: Color.fromARGB(255, Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256)));
            }, childCount: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10)),
        SliverList(delegate:
        SliverChildBuilderDelegate((BuildContext content, int index) {
          return ListTile(
            leading: Icon(Icons.people),
            title: Text(""),
          );
        }))
      ],
    );
  }
}

class CustomScrollViewDemo extends StatelessWidget {
  const CustomScrollViewDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          sliver: SliverPadding(
            sliver: SliverGrid(
              delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)));
              }, childCount: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
            padding: EdgeInsets.all(8),
          ),
        ),
      ],
    );
  }
}
