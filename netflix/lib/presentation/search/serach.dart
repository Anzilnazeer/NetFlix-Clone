import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/const.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.3),
              style: const TextStyle(color: Colors.white),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: SearchIdleWidget(),
          ),
        ],
      )),
    );
  }
}
