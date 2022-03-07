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
    return ListViewDemo3();
  }
}

class ListViewDemo3 extends StatelessWidget {
  const ListViewDemo3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Text("${index}");
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.green,
            indent: 30,
            endIndent: 30,
            thickness: 10,
          );
        },
        itemCount: 100);
  }
}

class ListViewDemo2 extends StatelessWidget {
  const ListViewDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemExtent: 60,
        itemBuilder: (BuildContext context, int index){
          return Text("${index}");
        });
  }
}

class ListViewDemo1 extends StatelessWidget {
  const ListViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      // reverse: true,
      // itemExtent: 100,
      children: List.generate(100, (index) {
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text("联系人${index+1}"),
          subtitle: Text("18888999888"),
        );
      }),
    );
  }
}
