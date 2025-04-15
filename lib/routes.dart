import 'package:flutter/material.dart';
import 'package:flutter_application_earth/mainLayout.dart';
import 'package:flutter_application_earth/onboarding.dart';
import 'package:flutter_application_earth/splash.dart';
import 'package:flutter_application_earth/tabs/hadith.dart';
import 'package:flutter_application_earth/tabs/most_rec.dart';
import 'package:flutter_application_earth/tabs/prayTimes.dart';
import 'package:flutter_application_earth/tabs/quran.dart';
import 'package:flutter_application_earth/tabs/quranDetails.dart';
import 'package:flutter_application_earth/tabs/radio.dart';
import 'package:flutter_application_earth/tabs/tasbeh.dart';

class Approutes {
  static const String splash = '/splash';
  static const String mainLayout = '/mainLayout';
  static const String tasbih = '/tasbih';

  static const String surawidget = '/surawidget';
  static const String hadith = '/hadith';
  static const String quran = '/quran';
  static const String radio = '/radio';
  static const String praytimes = '/praytimes';
  static const String mostrec = '/mostrec';
  static const String quranDetails = '/quranDetails';
  static const String onboarding = '/onboarding';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const Splash(),
    mainLayout: (context) => Mainlayout(),
    hadith: (context) => const Hadith(),
    quran: (context) => Quran(),
    radio: (context) => const RadioTap(),
    tasbih: (context) => Tasbih(),
    praytimes: (context) => const Praytimes(),
    mostrec: (context) => MostRec(),
    quranDetails: (context) => QuranDetails(),
    onboarding: (context) => Onboarding(),
  };
}
