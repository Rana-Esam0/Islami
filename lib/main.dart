import 'package:flutter/material.dart';
import 'package:flutter_application_earth/colors.dart';
import 'package:flutter_application_earth/prefs.dart';
import 'package:flutter_application_earth/routes.dart';

void main() {
  // await PrefsHandler.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Approutes.routes,
      initialRoute: Approutes.splash,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: MyColors.Black,
            titleTextStyle: TextStyle(
                color: MyColors.Gold,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            iconTheme: IconThemeData(color: MyColors.Gold),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedIconTheme: IconThemeData(color: Colors.white),
            unselectedIconTheme: IconThemeData(color: Colors.black),
          )),
      debugShowCheckedModeBanner: false,
      //  home: Mainlayout(),
    );
  }
}
