import 'package:flutter_application_earth/constant/consts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsHandler {
  static late final SharedPreferences prefs;
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void addSuraIndex(int suraindex) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecSuraIndex =
        prefs.getStringList("most_Rec_Sura_Index") ?? [];
    if (mostRecSuraIndex.contains("$suraindex")) {
      mostRecSuraIndex.remove("$suraindex");
      mostRecSuraIndex.add("$suraindex");
    } else {
      mostRecSuraIndex.add("$suraindex");
      //print(mostRecSuraIndex.length);
    }
    prefs.setStringList("most_rec_suras_index", mostRecSuraIndex);
  }

  static Future<List<SuraDM>> getMostRecSuras() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecSuraIndex =
        prefs.getStringList("most_rec_suras_index") ?? [];

    List<SuraDM> MostRecSuras = [];

    for (int i = 0; i < mostRecSuraIndex.length; i++) {
      int index = int.parse(mostRecSuraIndex[i]);
      MostRecSuras.add(constantManger.suras[index]);
    }
    return MostRecSuras.reversed.toList();
  }
}
