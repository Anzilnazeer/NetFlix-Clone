import 'package:flutter/material.dart';
import 'package:netflix/core/api_constants.dart';
import 'package:netflix/domain/home_model/api.dart';

class VideoWidget extends StatelessWidget {
  List<HomeApiResult> commingg
   = [];
  int index;
  VideoWidget({required this.commingg
  , required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: NetworkImage(
                      imageBaseUrl + commingg
                      [index].backdropPath!))),
        ),
        const Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.black12,
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.volume_off,
                color: Colors.white,
                size: 23,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
