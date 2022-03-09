import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/model/home_model.dart';
import 'package:learn_flutter/douban/widgets/dashed_line.dart';
import 'package:learn_flutter/douban/widgets/star_rating.dart';

class ZYCHomeMovieItem extends StatelessWidget {
  // const ZYCHomeMovieItem({Key? key}) : super(key: key);

  final MovieItem movieItem;

  ZYCHomeMovieItem(this.movieItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 8, color: Color(0xffeeeeee)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          const SizedBox(
            height: 10,
          ),
          buildContent(),
          const SizedBox(
            height: 10,
          ),
          buildFooter(),
        ],
      ),
    );
  }

  //1.头部排名
  Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(9, 4, 9, 4),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 205, 144),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        "No.${movieItem.em}",
        style: const TextStyle(
            color: Color.fromARGB(255, 131, 95, 36), fontSize: 18),
      ),
    );
  }

  //2.内容布局
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        const SizedBox(
          width: 8,
        ),
        buildContentInfo(),
        const SizedBox(
          width: 8,
        ),
        buildContentLine(),
        const SizedBox(
          width: 8,
        ),
        buildContentWish(),
      ],
    );
  }

  //2.1图片
  Widget buildContentImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          movieItem.img!,
          height: 150,
        ));
  }

  //2.2信息
  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        children: [
          buildContentInfoTitle(),
          const SizedBox(
            height: 8,
          ),
          buildContentInfoRating(),
          const SizedBox(
            height: 8,
          ),
          buildContentInfoDesc(),
        ],
      ),
    );
  }

  //2.2.1标题
  Widget buildContentInfoTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(children: [
          const WidgetSpan(
            child: Icon(
              Icons.play_circle_outlined,
              color: Colors.red,
              size: 24,
            ),
            alignment: PlaceholderAlignment.middle,
          ),
          WidgetSpan(
              child: Text(
                movieItem.name!,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              alignment: PlaceholderAlignment.middle),
          const WidgetSpan(
              child: Text(
                "(1990)",
                style: TextStyle(fontSize: 15, color: Colors.black26),
              ),
              alignment: PlaceholderAlignment.middle),
        ]),
        textAlign: TextAlign.left,
      ),
    );
  }

  //2.2.2评星
  Widget buildContentInfoRating() {
    return Row(
      children: [
        ZYCStarRating(
          rating: double.parse(movieItem.rank!),
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        Text(movieItem.rank!),
      ],
    );
  }

  //2.2.3详情
  Widget buildContentInfoDesc() {
    return const Text(
      "djakdsah / dasjdjhasl / dhjaskdhjska / dahjdhjksada / djsakldjsako",
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  //2.3虚线
  Widget buildContentLine() {
    return Container(
      height: 100,
      child: ZYCDashedLine(
        axis: Axis.vertical,
        dashedWidth: 1,
        dashedHeight: 6,
        count: 10,
        color: Colors.black12,
      ),
    );
  }

  //2.4按钮
  Widget buildContentWish() {
    return Column(
      children: [
        Icon(Icons.h_mobiledata),
        Text(""),
      ],
    );
  }

  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color(0xffe2e2e2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text("JHGFYTUIOJHIUYFTG"),
    );
  }
}
