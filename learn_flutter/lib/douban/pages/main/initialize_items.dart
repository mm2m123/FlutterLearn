import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/home/home.dart';
import 'package:learn_flutter/douban/pages/main/bottom_bar_item.dart';
import 'package:learn_flutter/douban/pages/subject/subject.dart';

List<ZYCBottomBarItem> items = [
  ZYCBottomBarItem(
      Icon(Icons.people_alt_outlined), Icon(Icons.people_alt), "1"),
  ZYCBottomBarItem(
      Icon(Icons.people_alt_outlined), Icon(Icons.people_alt), "2"),
  ZYCBottomBarItem(
      Icon(Icons.people_alt_outlined), Icon(Icons.people_alt), "3"),
  ZYCBottomBarItem(
      Icon(Icons.people_alt_outlined), Icon(Icons.people_alt), "4"),
  ZYCBottomBarItem(
      Icon(Icons.people_alt_outlined), Icon(Icons.people_alt), "5"),
];

List<Widget> pages = [
  ZYCHomePage(),
  ZYCSubjectPage(),
  ZYCHomePage(),
  ZYCHomePage(),
  ZYCHomePage()
];
