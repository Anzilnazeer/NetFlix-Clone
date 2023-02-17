import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/const.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';

class SearchResult extends StatelessWidget {
  SearchResult({super.key});

  String imageurl =
      'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/iHSwvRVsRyxpX7FE7GbviaDvgGZ.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('Movies & TV',
              style: GoogleFonts.montserrat(
                  fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        kheight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
            shrinkWrap: true,
            children: List.generate(20, (index) {
              return const MainCard();
            }),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:  const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(''),
        ),
      ),
    );
  }
}
