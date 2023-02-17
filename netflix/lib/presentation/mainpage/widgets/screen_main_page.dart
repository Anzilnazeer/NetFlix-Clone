import 'package:flutter/material.dart';

import 'package:netflix/presentation/downloads/widgets/screen_downloads.dart';

import 'package:netflix/presentation/home_page/home_page.dart';
import 'package:netflix/presentation/mainpage/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_and_Hot/new_and_hot.dart';
import 'package:netflix/presentation/search/serach.dart';

class Mainpage extends StatelessWidget {
  Mainpage({super.key});

  final pages = [
    const HomePage(),
    const NewAndHot(),
    const SearchPage(),
    const DownloadPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: changeIndexNotifier,
        builder: (context, value, child) {
          return pages[value];
        },
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
