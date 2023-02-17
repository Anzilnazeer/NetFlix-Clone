import 'package:flutter/material.dart';
import 'package:netflix/domain/home_model/api.dart';
import 'package:netflix/infrastructure/api_homepage.dart';

import '../../domain/downloads/model/downloads.dart';

import 'maincard.dart';
import 'maintitle.dart';

class MainTitleCard extends StatefulWidget {
  final String title;

  const MainTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MainTitleCard> createState() => _MainTitleCardState();
}

class _MainTitleCardState extends State<MainTitleCard> {
  List<HomeApiResult> homeList = [];
  @override
  void initState() {
    super.initState();
    HomeMovies();
  }

  HomeMovies() async {
    final movies = await fetchHomePage();
    setState(() {
      homeList = movies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: widget.title,
        ),
        LimitedBox(
          maxHeight: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                homeList.length,
                (index) => MainCardHome(
                      homeList: homeList,
                      index: index,
                    )),
          ),
        )
      ],
    );
  }
}
