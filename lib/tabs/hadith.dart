import 'package:flutter/material.dart';
import 'package:flutter_application_earth/tabs/hadithCardWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Hadith extends StatelessWidget {
  const Hadith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/Background (1).png")),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Image.asset("assets/images/Logo(1).png"),
          const Expanded(
            flex: 1,
            child: Image(
              image: AssetImage("assets/images/Logo(1).png"),
            ),
          ),
          Expanded(
            flex: 4,
            child: CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                enlargeCenterPage: true,
                viewportFraction: 0.7,
                aspectRatio: 1 / 1,
                // initialPage: 2,
              ),
              items: List.generate(
                50,
                (index) => index + 1,
              ).map((index) {
                return Hadithcardwidget(
                  index: index,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
