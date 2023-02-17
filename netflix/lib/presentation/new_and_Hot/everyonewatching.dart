import 'package:flutter/material.dart';

import '../../domain/home_model/api.dart';
import '../widgets/video_actions.dart';
import '../widgets/videowidget.dart';

class EveryoneWatching extends StatelessWidget {
  List<HomeApiResult> cumming = [];
  int index;
  EveryoneWatching({Key? key, required this.cumming, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final everyone = cumming;
    everyone.shuffle();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Text(
          everyone[index].originalTitle!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        const SizedBox(height: 5),
        Text(
          everyone[index].overview!,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(
          height: 50,
        ),
        VideoWidget(commingg: everyone, index: index),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            VideoActions(
              icon: Icons.ios_share_rounded,
              title: 'Share',
              iconsize: 28,
            ),
            VideoActions(
              icon: Icons.add,
              title: 'My List',
              iconsize: 28,
            ),
            VideoActions(
              icon: Icons.play_arrow,
              title: 'Play',
              iconsize: 28,
            )
          ],
        )
      ],
    );
  }
}
