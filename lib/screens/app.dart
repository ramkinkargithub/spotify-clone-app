import 'package:flutter/material.dart';
import 'package:spotify/screen/home.dart';
import 'package:spotify/screen/library.dart';
import 'package:spotify/screen/search.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Tabs = [Home(), Search(), YourLibrary()];
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTab],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          currentIndex: currentTab,
          onTap: (currentIndex) {
            currentTab = currentIndex;
            print("currentTab updated to $currentTab");
            setState(() {});
          },
          selectedLabelStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music,
                  color: Colors.white,
                ),
                label: 'Library'),
          ]),
    );
  }
}
