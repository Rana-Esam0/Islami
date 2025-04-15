import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_earth/routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Approutes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Image(
              image: AssetImage("assets/images/OBJECTS.png"),
              height: 200,
              width: 100,
            ),
          ),
          SizedBox(height: 200),
          Image(
            image: AssetImage("assets/images/Group29.png"),
            height: 50,
            width: 60,
          ),
        ],
      ),
    );
  }
}
