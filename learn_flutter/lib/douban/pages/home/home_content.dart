import 'package:flutter/material.dart';

class ZYCHomeContent extends StatefulWidget {
  const ZYCHomeContent({Key? key}) : super(key: key);

  @override
  State<ZYCHomeContent> createState() => _ZYCHomeContentState();
}

class _ZYCHomeContentState extends State<ZYCHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("首页"),
    );
  }
}
