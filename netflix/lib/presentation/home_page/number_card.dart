import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/api_constants.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';

class NumberCard extends StatelessWidget {
  int index;
  List<Downloads>numberlist = [];
  NumberCard({
    super.key,
    required this.index,required this.numberlist
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 150,
              ),
              Container(
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        NetworkImage(imageBaseUrl+numberlist[index].posterPath!),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 13,
            bottom: -20,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: BorderedText(
                strokeWidth: 4,
                strokeColor: Colors.white,
                child: Text(
                  "${index + 1}",
                  style: GoogleFonts.montserrat(
                      fontSize: 100,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
