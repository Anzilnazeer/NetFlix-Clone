import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:netflix/core/colors/const.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';
import 'package:netflix/presentation/downloads/widgets/section1.dart';

import '../../../infrastructure/api_download.dart';

import '../../widgets/app_bar_widget.dart';
import 'download_image_widget.dart';
import 'fetched_image.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  List<Downloads> imageList = [];
  @override
  void initState() {
    super.initState();
    downloadMovies();
  }

  void downloadMovies() async {
    final movies = await fetchDownload();
    setState(() {
      imageList = movies;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView(
          children: [
            kheight,

            //section 1
            Section1(),
            //section 1 ends

            kheight,

            //section 2
            const Text(
              'Introducing Downloads for you',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            kheight,
            const Text(
              '''We'll download a personalized selection of \nmovies and shows for you,so there is \nalways something to watch on your\n device.''',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            kheight,
            DownloadImage(
              size: size,
              imageList: imageList,
            ),
            //section 2 ends

            const SizedBox(
              height: 55,
            ),

            //section 3
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 59, 53, 180),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Set Up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'See What You Can Download',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            //section 3 ends
          ],
        ),
      ),
    );
  }
}
