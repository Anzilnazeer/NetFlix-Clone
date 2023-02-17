import 'package:flutter/material.dart';
import 'package:netflix/core/api_constants.dart';

import '../../../domain/downloads/model/downloads.dart';
import 'download_image_widget.dart';

class DownloadImage extends StatelessWidget {
  const DownloadImage({
    Key? key,
    required this.size,
    required this.imageList,
  }) : super(key: key);

  final Size size;
  final List<Downloads> imageList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 52, 52, 52),
              radius: size.width * 0.35,
            ),
          ),
          DownloadimageWidget(
            angle: -20,
            imageList: imageBaseUrl + imageList[0].posterPath!,
            margin: const EdgeInsets.only(right: 160),
          ),
          DownloadimageWidget(
            angle: 20,
            imageList: imageBaseUrl + imageList[5].posterPath!,
            margin: const EdgeInsets.only(left: 160),
          ),
          DownloadimageWidget(
            angle: 0,
            imageList: imageBaseUrl + imageList[19].posterPath!,
            margin: const EdgeInsets.only(top: 30),
          )
        ],
      ),
    );
  }
}
