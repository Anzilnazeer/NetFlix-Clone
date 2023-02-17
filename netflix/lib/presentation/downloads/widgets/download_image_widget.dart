import 'dart:math';

import 'package:flutter/material.dart';

class DownloadimageWidget extends StatelessWidget {
  const DownloadimageWidget({
    Key? key,
    required this.angle,
    required this.imageList,
    required this.margin,
  }) : super(key: key);

  final double angle;
  final EdgeInsets margin;
  final String imageList;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: screenwidth / 2.8,
        height: screenheight / 3.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(image: NetworkImage(imageList))),
      ),
    );
  }
}
