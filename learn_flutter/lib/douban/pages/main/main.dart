import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/home/home.dart';
import 'package:learn_flutter/douban/pages/main/initialize_items.dart';

class ZYCMainPage extends StatefulWidget {
  const ZYCMainPage({Key? key}) : super(key: key);

  @override
  State<ZYCMainPage> createState() => _ZYCMainPageState();
}

class _ZYCMainPageState extends State<ZYCMainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: items,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
