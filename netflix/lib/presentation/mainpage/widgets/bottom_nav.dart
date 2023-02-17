import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';

ValueNotifier<int> changeIndexNotifier = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: changeIndexNotifier,
      builder: (context, value, child) {
        return BottomNavigationBar(
          backgroundColor: bgcolor,
          currentIndex: value,
          onTap: (value) {
            changeIndexNotifier.value = value;
          },
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'New&hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
