import 'package:flutter/material.dart';
import 'package:flutter_application_earth/colors.dart';
import 'package:flutter_application_earth/constant/consts.dart';
import 'package:flutter_application_earth/prefs.dart';
import 'package:flutter_application_earth/routes.dart';
import 'package:flutter_application_earth/suraWidget.dart';

class MostRec extends StatefulWidget {
  MostRec({super.key});

  @override
  State<MostRec> createState() => MostRecState();
}

class MostRecState extends State<MostRec> {
  List<SuraDM> mostRecSuras = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMostRecSuras();
  }

  void getMostRecSuras() async {
    mostRecSuras = await PrefsHandler.getMostRecentSuras();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return mostRecSuras.isEmpty
        ? Container()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Most Recently",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                width: 283,
                child: ListView.builder(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      buildMostRec(suraDM: mostRecSuras[index]),
                  itemCount: mostRecSuras.length,
                ),
              ),
            ],
          );
  }

  Widget buildMostRec({required SuraDM suraDM}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Approutes.quranDetails,
            arguments: suraDetailesArguments(
              arabicName: suraDM.arabicName,
              englishName: suraDM.englishName,
              ayaNumber: suraDM.ayaNumber,
              suraIndex: suraDM.suraIndex,
              //mostRecKey: null,
              //mostRecKey: mostRecKey
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: MyColors.Gold,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          width: 283,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      suraDM.englishName,
                      style: const TextStyle(
                          color: MyColors.Black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      suraDM.arabicName,
                      style: const TextStyle(
                          color: MyColors.Black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      suraDM.ayaNumber,
                      style: const TextStyle(
                          color: MyColors.Black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Image.asset(
                "assets/images/reading.png",
                color: MyColors.Black,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
