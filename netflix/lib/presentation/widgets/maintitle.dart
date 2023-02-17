import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(title,
          style: GoogleFonts.montserrat(
              fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
}
