import 'package:flutter/material.dart';
import 'package:flutter_application_earth/colors.dart';
import 'package:flutter_application_earth/tabs/hadith.dart';
import 'package:flutter_application_earth/tabs/prayTimes.dart';
import 'package:flutter_application_earth/tabs/quran.dart';
import 'package:flutter_application_earth/tabs/radio.dart';
import 'package:flutter_application_earth/tabs/tasbeh.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mainlayout extends StatefulWidget {
  const Mainlayout({super.key});

  @override
  State<Mainlayout> createState() => _MainlayoutState();
}

class _MainlayoutState extends State<Mainlayout> {
  int currentIndex = 0;

  List<Widget> tabs = [
    Quran(),
    const Hadith(),
    Tasbih(),
    const RadioTap(),
    const Praytimes()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomBar(),
      body: tabs[currentIndex],
    );
  }

  Widget buildBottomBar() {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (tappedIndex) {
          currentIndex = tappedIndex;
          setState(() {});
        },
        backgroundColor: MyColors.Gold,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/quran-svgrepo-com 1 (1).png")),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.auto_stories), label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.circleDot, size: 30), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: ""),
        ]);
  }
}
