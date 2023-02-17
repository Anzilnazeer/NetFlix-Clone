import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/mainpage/widgets/screen_main_page.dart';
import 'package:netflix/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: bgcolor,
          scaffoldBackgroundColor: bgcolor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            bodyText2: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          )),
      home: SplashScreen(),
    );
  }
}
