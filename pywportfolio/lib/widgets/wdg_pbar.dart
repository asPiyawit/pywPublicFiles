import 'package:flutter/material.dart';

class WdgPBar extends StatelessWidget {
  final Color barMajorColor;
  final Color barMinorColor;
  final double barMajorHeight;
  final double barMinorHeight;
  WdgPBar({
    @required this.barMajorColor,
    @required this.barMinorColor,
    @required this.barMajorHeight,
    @required this.barMinorHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: barMinorHeight),
      width: 8,
      height: barMajorHeight,
      color: barMajorColor,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: barMinorColor,
        ),
      ),
    );
  }
}
