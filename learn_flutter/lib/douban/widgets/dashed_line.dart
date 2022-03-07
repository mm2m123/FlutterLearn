import 'package:flutter/material.dart';

class ZYCDashedLine extends StatelessWidget {
  // const ZYCDashedLine({Key? key}) : super(key: key);
  final Axis axis;
  final double? dashedWidth;
  final double? dashedHeight;
  final int? count;
  final Color? color;

  ZYCDashedLine(
      {this.axis = Axis.horizontal,
        this.dashedHeight = 1,
        this.dashedWidth = 1,
        this.color = Colors.red,
        this.count = 10});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count!, (index) {
        return SizedBox(
          width: dashedWidth,
          height: dashedHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(color: color),
          ),
        );
      }),
    );
  }
}
