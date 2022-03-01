import 'package:flutter/material.dart';

main() {
  runApp(
      ZYCHomePage()
  );
}

class ZYCHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("data"),
          ),
          body: const Center(
            child: Text(
              "卷",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          ),
        )
    );
  }

}