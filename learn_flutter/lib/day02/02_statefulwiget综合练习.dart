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

class ZYCHomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ZYCHomeContentState();
  }
}

class _ZYCHomeContentState extends State<ZYCHomeContent> {

  var _number = 0;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getButtons(),
          Text("$_number")
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            child: const Text('++++'),
            onPressed: (){
              setState(() {
                _number ++;
              });
            }),
        ElevatedButton(
            child: const Text('----'),
            onPressed: (){
              setState(() {
                _number --;
              });
            }),
      ],
    );
  }

}