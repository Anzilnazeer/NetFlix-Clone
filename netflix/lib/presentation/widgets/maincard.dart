import 'package:flutter/material.dart';
import 'package:netflix/core/api_constants.dart';
import 'package:netflix/domain/home_model/api.dart';

class MainCardHome extends StatelessWidget {
  List<HomeApiResult> homeList = [];
  int index;
  MainCardHome({Key? key, required this.homeList, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final relased = homeList;
    relased.shuffle();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageBaseUrl + relased[index].posterPath!),
            ),
          ),
        ),
      ),
    );
  }
}
