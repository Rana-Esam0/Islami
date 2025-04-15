import 'package:flutter/material.dart';
import 'package:flutter_application_earth/colors.dart';
import 'package:flutter_application_earth/routes.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            useScrollView: true,
            decoration: PageDecoration(
              pageColor: MyColors.Black,
              bodyFlex: 2,
            ),
            title: "",
            bodyWidget: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/Frame 3.png",
                    width: 398,
                    height: 180,
                  ),
                  Text(
                    "Welcome To Islmi App",
                    style: TextStyle(
                        color: MyColors.Gold,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          PageViewModel(
            useScrollView: true,
            decoration: PageDecoration(
              pageColor: MyColors.Black,
              bodyFlex: 2,
            ),
            title: "",
            bodyWidget: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Frame 3 (1).png",
                    width: 398,
                    height: 180,
                  ),
                  Text(
                    "   We Are Very Excited To Have You In Our Community",
                    style: TextStyle(
                        color: MyColors.Gold,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          PageViewModel(
            useScrollView: true,
            decoration: PageDecoration(
              pageColor: MyColors.Black,
              bodyFlex: 2,
            ),
            title: "",
            bodyWidget: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/Frame 3 (2).png",
                    width: 398,
                    height: 250,
                  ),
                  Text(
                    "Reading the Quran",
                    style: TextStyle(
                        color: MyColors.Gold,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          PageViewModel(
            useScrollView: true,
            decoration: PageDecoration(
              pageColor: MyColors.Black,
              bodyFlex: 2,
            ),
            title: "",
            bodyWidget: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/Frame 3 (3).png",
                    width: 398,
                    height: 265,
                  ),
                  Text(
                    "Praise the name of your Lord, the Most High",
                    style: TextStyle(
                        color: MyColors.Gold,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          PageViewModel(
            useScrollView: true,
            decoration: PageDecoration(
              pageColor: MyColors.Black,
              bodyFlex: 2,
            ),
            title: "",
            bodyWidget: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/Frame 3 (4).png",
                    width: 398,
                    height: 215,
                  ),
                  Text(
                    "You can listen to the Holy Quran Radio through the application for free and easily",
                    style: TextStyle(
                        color: MyColors.Gold,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
        ],
        globalBackgroundColor: MyColors.Black,
        showNextButton: true,
        dotsFlex: 2,
        globalHeader: Image.asset("assets/images/Logo(1).png"),
        dotsDecorator: DotsDecorator(
            activeSize: Size(18, 7),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        next: Text(
          "Next",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: MyColors.Gold),
        ),
        showDoneButton: true,
        done: Text("Done",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: MyColors.Gold)),
        onDone: () {
          Navigator.pushReplacementNamed(context, Approutes.mainLayout);
        },
      ),
    );
  }
}
