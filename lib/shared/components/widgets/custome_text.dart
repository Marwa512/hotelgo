import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(String s, 
      {Key? key,
      required this.title,
      this.color,
      this.fontSize,
      this.fontWeight})
      : super(key: key);
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          overflow: TextOverflow.ellipsis),
    );
  }
}
