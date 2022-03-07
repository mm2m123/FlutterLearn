import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/home/home_content.dart';
import 'package:learn_flutter/douban/pages/subject/subject_content.dart';

class ZYCSubjectPage extends StatelessWidget {
  const ZYCSubjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("书影音"),),
      body: ZYCSubjectContent(),
    );
  }
}

