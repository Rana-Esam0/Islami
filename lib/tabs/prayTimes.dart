import 'package:flutter/material.dart';
import 'package:flutter_application_earth/colors.dart';

class Praytimes extends StatelessWidget {
  const Praytimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/BackgroundPrayTimes.png")),
      ),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Image(image: AssetImage("assets/images/Islami.png"))),
          Expanded(
            flex: 2,
            child: Container(
                width: 301,
                height: 301,
                decoration: BoxDecoration(
                    color: Color(0xFF856B3F),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Image(image: AssetImage("assets/images/times.png"))),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/Illustration (1).png")),
                Image(image: AssetImage("assets/images/Illustration.png")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
