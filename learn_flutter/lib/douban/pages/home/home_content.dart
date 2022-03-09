import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/model/home_model.dart';
import 'package:learn_flutter/douban/pages/home/home_movie_item.dart';
import 'package:learn_flutter/douban/pages/home/home_request.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/service/http_request.dart';

class ZYCHomeContent extends StatefulWidget {
  const ZYCHomeContent({Key? key}) : super(key: key);

  @override
  State<ZYCHomeContent> createState() => _ZYCHomeContentState();
}

class _ZYCHomeContentState extends State<ZYCHomeContent> {
  List<MovieItem> movieList = [];

  @override
  void initState() {
    super.initState();
    //发送网络请求

    // setState(() {
    HomeRequest.requestMovieList(0).then((value) {
      setState(() {
        movieList.addAll(value);
      });
    });
    //   index = movieList.length;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        return ZYCHomeMovieItem(movieList[index]);
      },
      itemCount: movieList.length,
    );
  }
}

// Future<List<Anchor>> getAnchors() async {
//   //1. 读取json文件
//   String jsonString = await rootBundle.loadString("assets/movie_list.json");
//
//   //2.转成List或Map类型
//   final jsonResult = json.decode(jsonString);
//
//   //遍历List，并且转成Anchor对象放到另一个List中
//   List<Anchor> anchors = new List();
//   for(Map<String,dynamic> map in jsonResult) {
//     anchors.add(Anchor.withMap(map));
//   }
//
//   return anchors;
// }
