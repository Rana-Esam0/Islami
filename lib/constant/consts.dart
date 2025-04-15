import 'package:flutter/material.dart';
import 'package:flutter_application_earth/tabs/most_rec.dart';

class SuraDM {
  String arabicName;
  String englishName;
  String ayaNumber;
  String suraIndex; // تم تغيير النوع إلى String

  SuraDM({
    required this.arabicName,
    required this.englishName,
    required this.ayaNumber,
    required this.suraIndex, // تم تعديل هذا الجزء ليأخذ suraIndex من النوع String
  });
}

class constantManger {
  static List<SuraDM> suras = [
    SuraDM(
        arabicName: "الفاتحه",
        englishName: "Al-Fatiha",
        ayaNumber: "7",
        suraIndex: "0"),
    SuraDM(
        arabicName: "البقرة",
        englishName: "Al-Baqarah",
        ayaNumber: "286",
        suraIndex: "1"),
    SuraDM(
        arabicName: "آل عمران",
        englishName: "Aal-E-Imran",
        ayaNumber: "200",
        suraIndex: "2"),
    SuraDM(
        arabicName: "النساء",
        englishName: "An-Nisa'",
        ayaNumber: "176",
        suraIndex: "3"),
    SuraDM(
        arabicName: "المائدة",
        englishName: "Al-Ma'idah",
        ayaNumber: "120",
        suraIndex: "4"),
    SuraDM(
        arabicName: "الأنعام",
        englishName: "Al-An'am",
        ayaNumber: "165",
        suraIndex: "5"),
    SuraDM(
        arabicName: "الأعراف",
        englishName: "Al-A'raf",
        ayaNumber: "206",
        suraIndex: "6"),
    SuraDM(
        arabicName: "الأنفال",
        englishName: "Al-Anfal",
        ayaNumber: "75",
        suraIndex: "7"),
    SuraDM(
        arabicName: "التوبة",
        englishName: "At-Tawbah",
        ayaNumber: "129",
        suraIndex: "8"),
    SuraDM(
        arabicName: "يونس",
        englishName: "Yunus",
        ayaNumber: "109",
        suraIndex: "9"),
    SuraDM(
        arabicName: "هود",
        englishName: "Hud",
        ayaNumber: "123",
        suraIndex: "10"),
    SuraDM(
        arabicName: "يوسف",
        englishName: "Yusuf",
        ayaNumber: "111",
        suraIndex: "11"),
    SuraDM(
        arabicName: "الرعد",
        englishName: "Ar-Ra'd",
        ayaNumber: "43",
        suraIndex: "12"),
    SuraDM(
        arabicName: "إبراهيم",
        englishName: "Ibrahim",
        ayaNumber: "52",
        suraIndex: "13"),
    SuraDM(
        arabicName: "الحجر",
        englishName: "Al-Hijr",
        ayaNumber: "99",
        suraIndex: "14"),
    SuraDM(
        arabicName: "النحل",
        englishName: "An-Nahl",
        ayaNumber: "128",
        suraIndex: "15"),
    SuraDM(
        arabicName: "الإسراء",
        englishName: "Al-Isra",
        ayaNumber: "111",
        suraIndex: "16"),
    SuraDM(
        arabicName: "الكهف",
        englishName: "Al-Kahf",
        ayaNumber: "110",
        suraIndex: "17"),
    SuraDM(
        arabicName: "مريم",
        englishName: "Maryam",
        ayaNumber: "98",
        suraIndex: "18"),
    SuraDM(
        arabicName: "طه",
        englishName: "Ta-Ha",
        ayaNumber: "135",
        suraIndex: "19"),
    SuraDM(
        arabicName: "الأنبياء",
        englishName: "Al-Anbiya",
        ayaNumber: "112",
        suraIndex: "20"),
    SuraDM(
        arabicName: "الحج",
        englishName: "Al-Hajj",
        ayaNumber: "78",
        suraIndex: "21"),
    SuraDM(
        arabicName: "المؤمنون",
        englishName: "Al-Mu'minun",
        ayaNumber: "118",
        suraIndex: "22"),
    SuraDM(
        arabicName: "النّور",
        englishName: "An-Nur",
        ayaNumber: "64",
        suraIndex: "23"),
    SuraDM(
        arabicName: "الفرقان",
        englishName: "Al-Furqan",
        ayaNumber: "77",
        suraIndex: "24"),
    SuraDM(
        arabicName: "الشعراء",
        englishName: "Ash-Shu'ara",
        ayaNumber: "227",
        suraIndex: "25"),
    SuraDM(
        arabicName: "النّمل",
        englishName: "An-Naml",
        ayaNumber: "93",
        suraIndex: "26"),
    SuraDM(
        arabicName: "القصص",
        englishName: "Al-Qasas",
        ayaNumber: "88",
        suraIndex: "27"),
    SuraDM(
        arabicName: "العنكبوت",
        englishName: "Al-Ankabut",
        ayaNumber: "69",
        suraIndex: "28"),
    SuraDM(
        arabicName: "الرّوم",
        englishName: "Ar-Rum",
        ayaNumber: "60",
        suraIndex: "29"),
    SuraDM(
        arabicName: "لقمان",
        englishName: "Luqman",
        ayaNumber: "34",
        suraIndex: "30"),
    SuraDM(
        arabicName: "السجدة",
        englishName: "As-Sajda",
        ayaNumber: "30",
        suraIndex: "31"),
    SuraDM(
        arabicName: "الأحزاب",
        englishName: "Al-Ahzab",
        ayaNumber: "73",
        suraIndex: "32"),
    SuraDM(
        arabicName: "سبأ",
        englishName: "Saba",
        ayaNumber: "54",
        suraIndex: "33"),
    SuraDM(
        arabicName: "فاطر",
        englishName: "Fatir",
        ayaNumber: "45",
        suraIndex: "34"),
    SuraDM(
        arabicName: "يس",
        englishName: "Ya-Sin",
        ayaNumber: "83",
        suraIndex: "35"),
    SuraDM(
        arabicName: "الصافات",
        englishName: "As-Saffat",
        ayaNumber: "182",
        suraIndex: "36"),
    SuraDM(
        arabicName: "ص", englishName: "Sad", ayaNumber: "88", suraIndex: "37"),
    SuraDM(
        arabicName: "الزمر",
        englishName: "Az-Zumar",
        ayaNumber: "75",
        suraIndex: "38"),
    SuraDM(
        arabicName: "غافر",
        englishName: "Ghafir",
        ayaNumber: "85",
        suraIndex: "39"),
    SuraDM(
        arabicName: "فصّلت",
        englishName: "Fussilat",
        ayaNumber: "54",
        suraIndex: "40"),
    // قم بإضافة باقي السور بنفس الطريقة
  ];
}
