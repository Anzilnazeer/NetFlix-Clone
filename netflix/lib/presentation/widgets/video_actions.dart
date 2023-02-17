import 'package:flutter/material.dart';

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconsize;
  const VideoActions(
      {super.key, required this.icon, required this.title, this.iconsize = 30});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: iconsize,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
