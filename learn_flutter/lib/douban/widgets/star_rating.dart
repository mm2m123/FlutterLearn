import 'package:flutter/material.dart';

class ZYCStarRating extends StatefulWidget {
  // const ZYCStarRating({Key? key}) : super(key: key);
  ///评分
  final double rating;
  ///最大分值
  final double maxRating;
  ///几颗星星
  final int count;
  ///星星尺寸
  final double size;
  ///未选中星星颜色
  final Color unselectedColor;
  ///选中星星颜色
  final Color selectedColor;
  ///未选中星星图片
  final Widget unselectedImage;
  ///选中星星图片
  final Widget selectedImage;

  ZYCStarRating(
      {required this.rating,
      this.maxRating = 10,
      this.count = 5,
      this.size = 30,
      this.unselectedColor = const Color(0xffbbbbbb),
      this.selectedColor = const Color(0xffff0000),
      Widget? selectedImage,
      Widget? unselectedImage})
      : unselectedImage = unselectedImage ??
            Icon(
              Icons.star_border,
              color: unselectedColor,
              size: size,
            ),
        selectedImage = selectedImage ??
            Icon(
              Icons.star,
              color: selectedColor,
              size: size,
            );

  @override
  State<ZYCStarRating> createState() => _ZYCStarRatingState();
}

class _ZYCStarRatingState extends State<ZYCStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: buildUnselectedStar()),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectedStar(),
        ),
      ],
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
    });
  }

  List<Widget> buildSelectedStar() {
    final star = widget.selectedImage;
    //1.创建 star
    List<Widget> stars = [];
    //2.构建满填充star
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor();
    for (var i = 0; i < entireCount; i++) {
      stars.add(star);
    }
    //3.构建部分填充star
    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    final partStar = ClipRect(
      child: star,
      clipper: ZYCStarClipper(leftWidth),
    );
    stars.add(partStar);
    if (stars.length > widget.count) {
      stars = stars.sublist(0, widget.count);
    }
    return stars;
  }
}

class ZYCStarClipper extends CustomClipper<Rect> {
  double width;

  ZYCStarClipper(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(covariant ZYCStarClipper oldClipper) {
    return oldClipper.width != width;
  }
}
