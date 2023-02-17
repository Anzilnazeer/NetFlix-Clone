import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/const.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        kwidth,
        Container(
          width: 25,
          height: 25,
          color: Colors.blueGrey,
        ),
        kwidth,
      ],
    );
  }
}
