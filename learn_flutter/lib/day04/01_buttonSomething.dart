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
    // return Image.asset("assets/image/111.png");
    return Icon(Icons.pets, size: 90,color: Colors.green,);
  }
}

class ImageExtensionDemo extends StatelessWidget {
  const ImageExtensionDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeInImage(
        placeholder: AssetImage("assets/image/111.png"),
        image: NetworkImage("https://img2.baidu.com/it/u=2779772227,1343144428&fm=253&fmt=auto&app=138&f=JPEG?w=974&h=500")
    );
  }
}

class ButtonExtensionDemo extends StatelessWidget {
  const ButtonExtensionDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: FlatButton(onPressed: () {}, color:Colors.red, child: const Text("")),
      buttonColor: Colors.green,
      minWidth: 10,
      height: 10,
      padding: EdgeInsets.all(0),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/image/111.png"),
    );
  }
}
