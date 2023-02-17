import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/api_constants.dart';
import 'package:netflix/domain/home_model/api.dart';
import 'package:netflix/infrastructure/api_homepage.dart';

import '../../../core/colors/const.dart';

class SearchIdleWidget extends StatefulWidget {
  const SearchIdleWidget({super.key});

  @override
  State<SearchIdleWidget> createState() => _SearchIdleWidgetState();
}

class _SearchIdleWidgetState extends State<SearchIdleWidget> {
  List<HomeApiResult> searchList = [];

  @override
  void initState() {
    super.initState();
    searchcardList();
  }

  searchcardList() async {
    final searchmovies = await fetchHomePage();
    setState(() {
      searchList = searchmovies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('Top Searches',
              style: GoogleFonts.montserrat(
                  fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchTile(
                    searchList: searchList,
                    index: index,
                  ),
              separatorBuilder: (context, index) => kheight,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchTile extends StatelessWidget {
  TopSearchTile({required this.searchList, required this.index, super.key});
  int? index;
  List<HomeApiResult> searchList = [];
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: screenwidth / 2.3,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageBaseUrl + searchList[index!].backdropPath!,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            searchList[index!].originalTitle!,
            style:
                const TextStyle(fontSize: 18, overflow: TextOverflow.ellipsis),
          ),
        ),
        const Center(
          child: Icon(
            CupertinoIcons.play_circle_fill,
            color: Color.fromARGB(149, 255, 252, 252),
            size: 50,
          ),
        )
      ],
    );
  }
}
