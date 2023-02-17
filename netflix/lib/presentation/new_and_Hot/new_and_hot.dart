import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:netflix/presentation/widgets/app_bar_widget.dart';

import '../../core/colors/const.dart';
import '../../domain/home_model/api.dart';
import '../../infrastructure/api_homepage.dart';
import '../widgets/videowidget.dart';
import 'comingsoon.dart';
import 'everyonewatching.dart';

class NewAndHot extends StatefulWidget {
  const NewAndHot({super.key});

  @override
  State<NewAndHot> createState() => _NewAndHotState();
}

class _NewAndHotState extends State<NewAndHot> {
  List<HomeApiResult> commingsoon = [];

  @override
  void initState() {
    super.initState();
    commingSoon();
  }

  void commingSoon() async {
    final commingSoon = await fetchHomePage();
    setState(() {
      commingsoon = commingSoon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                'New & Hot',
                style: GoogleFonts.montserrat(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Container(
                  height: 4,
                  width: 20,
                  color: Colors.blueGrey,
                ),
                kwidth,
              ],
              bottom: TabBar(
                isScrollable: true,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    text: '🍿Coming Soon',
                  ),
                  Tab(
                    text: '''👀 Everyone's'watching''',
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              buildComingSoon(context),
              buildEveryoneWatching(),
            ],
          ),
        ),
      ),
    );
  }

  buildComingSoon(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: commingsoon.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ComingSoonNewAndHot(
          size: size,
          comming: commingsoon,
          index: index,
        );
      },
    );
  }

  buildEveryoneWatching() {
    return ListView.builder(
      itemCount: commingsoon.length,
      itemBuilder: (context, index) {
        return EveryoneWatching(
          cumming: commingsoon,
          index: index,
        );
      },
    );
  }
}
