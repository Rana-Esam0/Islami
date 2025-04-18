import 'package:flutter/material.dart';
import 'package:flutter_application_earth/constant/consts.dart';
import 'package:flutter_application_earth/prefs.dart';
import 'package:flutter_application_earth/routes.dart';
import 'package:flutter_application_earth/tabs/most_rec.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_earth/tabs/QuranDetails.dart';

class Surawidget extends StatelessWidget {
  final SuraDM suraDM;
  //final int index;
  final GlobalKey<MostRecState> mostRecKey;

  const Surawidget({
    super.key,
    required this.suraDM,
    //required this.index,
    required this.mostRecKey,
    // required GlobalKey<MostRecState> mostRecKey,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        PrefsHandler.addSuraIndex(int.parse(suraDM.suraIndex));

        Navigator.pushNamed(context, Approutes.quranDetails,
            arguments: suraDetailesArguments(
                mostRecKey: mostRecKey,
                englishName: suraDM.englishName,
                arabicName: suraDM.arabicName,
                ayaNumber: suraDM.ayaNumber,
                suraIndex: suraDM.suraIndex));
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/suraNum.png"),
              Text(
                suraDM.suraIndex,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Column(
            children: [
              Text(
                suraDM.englishName,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                suraDM.ayaNumber,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          const Spacer(flex: 4),
          Text(
            suraDM.arabicName,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class suraDetailesArguments {
  String englishName;
  String arabicName;
  String ayaNumber;
  String suraIndex;
  final GlobalKey<MostRecState>? mostRecKey;

  suraDetailesArguments(
      {required this.arabicName,
      required this.englishName,
      required this.ayaNumber,
      required this.suraIndex,
      this.mostRecKey});
}
