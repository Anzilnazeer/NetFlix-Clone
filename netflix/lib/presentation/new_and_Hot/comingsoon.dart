import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/domain/home_model/api.dart';
import 'package:netflix/infrastructure/api_homepage.dart';
import 'package:netflix/presentation/widgets/videowidget.dart';

import '../widgets/video_actions.dart';

class ComingSoonNewAndHot extends StatelessWidget {
  ComingSoonNewAndHot({
    Key? key,
    required this.size,
    required this.comming,
    required this.index,
  }) : super(key: key);
  List<HomeApiResult> comming = [];
  final Size size;
  int index;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: 50,
        height: 500,
        child: Column(
          children: [
            const Text(
              'FEB',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '${index + 10}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            )
          ],
        ),
      ),
      SizedBox(
        width: size.width - 50,
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VideoWidget(
              index: index,
              commingg: comming,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    comming[index].originalTitle!,
                    style: GoogleFonts.aBeeZee(fontSize: 35, letterSpacing: -4),
                    // overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const Spacer(),
                Row(
                  children: const [
                    VideoActions(
                      icon: Icons.notifications,
                      title: 'remind me',
                      iconsize: 25,
                    ),
                    VideoActions(
                      icon: Icons.info_outline,
                      title: 'info',
                      iconsize: 25,
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                )
              ],
            ),
            const Text(
              'Coming on Friday',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              comming[index].originalTitle!,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              comming[index].overview!,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    ]);
  }
}
