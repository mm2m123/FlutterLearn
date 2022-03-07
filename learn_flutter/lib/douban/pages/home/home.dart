import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/home/home_content.dart';

class ZYCHomePage extends StatelessWidget {
  const ZYCHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页"),),
      body: ZYCHomeContent(),
    );
  }
}

