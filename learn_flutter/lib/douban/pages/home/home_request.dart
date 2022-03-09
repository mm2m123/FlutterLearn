import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/douban/model/home_model.dart';
import 'package:learn_flutter/service/config.dart';
import 'package:learn_flutter/service/http_request.dart';

///https://douban-api.uieee.com/v2/movie/top250?start=0&count=20

class HomeRequest {
  // List jsonList = [];

  static Future<List<MovieItem>> requestMovieList(int start) async {
    // final movieURL =
    //     "https://douban-api.uieee.com/v2/movie/top250?start=${start}&count=${HomeConfig.movieCount}";
    //
    // HttpRequest.request(movieURL).then((value) {
    //   print("${value}");
    // });
    List<MovieItem> movieItemList  = [];
    await rootBundle.loadString("assets/movie_list.json").then((value) {
      Map jsonMap = json.decode(value);
      List jsonList = jsonMap["subjects"];
      for (int i = 0; i<jsonList.length; i++) {
        MovieItem movieItem = MovieItem.fromMap(jsonList[i]);
        movieItemList.add(movieItem);
      }
    });
    return movieItemList;
  }
}
