import 'package:flutter/material.dart';
import 'package:netflix/core/api_constants.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';
import 'package:netflix/infrastructure/api_download.dart';

import '../widgets/video_actions.dart';

class BackgroundCard extends StatefulWidget {
  BackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  State<BackgroundCard> createState() => _BackgroundCardState();
}

class _BackgroundCardState extends State<BackgroundCard> {
  List<Downloads> imageList = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      backgroundImage();
    });
  }

  backgroundImage() async {
    final banner = await fetchDownload();
    setState(() {
      imageList = banner;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/9PFonBhy4cQy7Jz20NpMygczOkv.jpg'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const VideoActions(icon: Icons.add, title: 'My List'),
              TextButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 255, 255, 255))),
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 24,
                ),
                label: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Play',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const VideoActions(icon: Icons.info_outline, title: 'Info'),
            ],
          ),
        )
      ],
    );
  }
}
