import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_earth/colors.dart';

class Tasbih extends StatefulWidget {
  Tasbih({
    super.key,
  });
  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> with SingleTickerProviderStateMixin {
  double rotation = 0;
  int counter = 0;
  void onTasbihPressed() {
    setState(() {
      counter++;
      rotation += 10;
      if (counter > 30) {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/BackgroundSebha.png")),
      ),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Image(image: AssetImage("assets/images/Islami.png"))),
          Expanded(
            flex: 1,
            child: Image(
                image: AssetImage(
                    "assets/images/سَبِّحِ اسْمَ رَبِّكَ الأعلى.png")),
          ),
          Expanded(
              flex: 3,
              child: GestureDetector(
                  onTap: onTasbihPressed,
                  child: Transform.rotate(
                    angle: rotation * 3.14 / 180,
                    child: Image.asset(
                      "assets/images/Sebha (1).png",
                    ),
                  ))),
          Text(
            " $counter سبحان الله",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
