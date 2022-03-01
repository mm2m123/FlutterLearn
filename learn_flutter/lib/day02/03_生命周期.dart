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
  const ZYCHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goods List"),
      ),
      body: ZYCHomeContent(),
    );
  }
}

// //StatelessWidget生命周期
// class ZYCHomeContent extends StatelessWidget {
//
//   ZYCHomeContent(){
//     print("构造方法被调用");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print("build方法被调用");
//     return Container();
//   }
// }


class ZYCHomeContent extends StatefulWidget {
  // const ZYCHomeContent({Key? key}) : super(key: key);

  ZYCHomeContent() {
    print("1.调用ZYCHomeContent构造");
  }

  @override
  _ZYCHomeContentState createState() {
    print("2.调用createState");
    return _ZYCHomeContentState();
  }
}

class _ZYCHomeContentState extends State<ZYCHomeContent> {

  int _count = 0;

  _ZYCHomeContentState(){
    print("3.调用_ZYCHomeContentState构造");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("4.调用_ZYCHomeContentStateInitState");
  }

  @override
  Widget build(BuildContext context) {
    print("5.调用_ZYCHomeContentStateBuild");
    return Column(
      children: [
        ElevatedButton(
            onPressed: (){
              setState(() {
                _count ++;
          });
        },
            child: Icon(Icons.add))
      ],
    );
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print(".调用_ZYCHomeContentStateDidChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant ZYCHomeContent oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print(".调用_ZYCHomeContentStateDidUpdateWidget");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("调用_ZYCHomeContentStateDispose");
  }
}

