import 'package:flutter/material.dart';
import 'package:flutter_application_earth/colors.dart';

class RadioTap extends StatefulWidget {
  const RadioTap({super.key});

  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  bool showFirst = true;

  final List<String> imagePaths = [
    "assets/images/Group 4.png",
    "assets/images/Group 4.png",
    "assets/images/Group 4.png",
    "assets/images/Group 4.png",
    "assets/images/Group 4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Background.png"),
        ),
      ),
      child: Column(
        children: [
          Image.asset("assets/images/Islami.png"),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                // زر Radio
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: showFirst ? MyColors.Gold : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: () => setState(() => showFirst = true),
                      child: Text(
                        "Radio",
                        style: TextStyle(
                          color: showFirst ? Colors.white : MyColors.Gold,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 5),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: !showFirst ? MyColors.Gold : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: () => setState(() => showFirst = false),
                      child: Text(
                        "Reciters",
                        style: TextStyle(
                          color: !showFirst ? Colors.white : MyColors.Gold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: buildContent(),
          ),
        ],
      ),
    );
  }

  Widget buildContent() {
    List<String> displayedImages =
        showFirst ? imagePaths.reversed.toList() : imagePaths;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: displayedImages.map((path) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Image.asset(path),
          );
        }).toList(),
      ),
    );
  }
}
