import 'package:flutter/material.dart';
import 'package:flutter_application_earth/colors.dart';
import 'package:flutter_application_earth/constant/consts.dart';
import 'package:flutter_application_earth/suraWidget.dart';
import 'package:flutter_application_earth/tabs/most_rec.dart';

class Quran extends StatefulWidget {
  Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  String searchKey = '';

  List<SuraDM> filteredList = [];

  final GlobalKey<MostRecState> mostRecKey = GlobalKey<MostRecState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/taj-mahal-agra-india.png")),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Image.asset("assets/images/Islami.png"),
                const SizedBox(
                  height: 10,
                ),
                buildTextFom(),
                MostRec(
                  key: mostRecKey,
                ),
                const SizedBox(height: 10),
                buildSurasList(),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget buildTextFom() {
    return SizedBox(
      height: 55,
      child: TextField(
        onChanged: (value) {
          searchKey = value;
          print(searchKey);
          setState(() {});
        },
//         cursorColor: MyColors.ofWhite,
        cursorColor: MyColors.Gold,
        style: const TextStyle(
            fontWeight: FontWeight.normal, color: Colors.white, fontSize: 18),
        decoration: InputDecoration(
            // hintText: "Sura name",
            labelText: "Sura name",
            labelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: const ImageIcon(
                AssetImage("assets/images/quran-svgrepo-com 1 (1).png")),
            // label:
            // prefix: ImageIcon(
            //   AssetImage("assets/images/quran-svgrepo-com 1 (1).png"),
            //   color: MyColors.Gold,
            // ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: MyColors.Gold, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: MyColors.Gold, width: 1),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }

  void getFilteredList() {
    filteredList = constantManger.suras
        .where((suraDM) =>
            suraDM.englishName
                .toLowerCase()
                .contains(searchKey.toLowerCase()) ||
            suraDM.arabicName.contains(searchKey))
        .toList();
    print(filteredList.length);
  }

  Widget buildSurasList() {
    if (searchKey.isEmpty) {
      filteredList = constantManger.suras;
    } else {
      getFilteredList();
    }
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: filteredList.length,
        separatorBuilder: (context, index) => const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 64,
              endIndent: 64,
            ),
        itemBuilder: (context, index) => Surawidget(
              suraDM: filteredList[index],

              mostRecKey: mostRecKey,
              // MostRecSuraKey: MostRecSuraKey,
            ));
  }
}
