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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
        ),
        body: ZYCContentBody()
    );
  }
}

class ZYCContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "卷",
        style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
    );
  }
}