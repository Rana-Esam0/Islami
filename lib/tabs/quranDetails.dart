import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_earth/colors.dart';
import 'package:flutter_application_earth/suraWidget.dart';

class QuranDetails extends StatefulWidget {
  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  late suraDetailesArguments arguments;
  String suraContent = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arguments =
        ModalRoute.of(context)!.settings.arguments as suraDetailesArguments;
    loadSuraContent(arguments.suraIndex);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //arguments.MostRecKey.currentState?.getMostRecSuras;
    arguments.mostRecKey?.currentState?.getMostRecSuras();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.Black,
        appBar: AppBar(title: Text(arguments.englishName)),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/Mask group.png",
                        color: MyColors.Black,
                      ),
                      Text(
                        arguments.arabicName,
                        style: const TextStyle(
                          fontSize: 24,
                          color: MyColors.Gold,
                        ),
                      ),
                      Image.asset(
                        "assets/images/Mask group (1).png",
                        color: MyColors.Black,
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                  child: suraContent.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : SingleChildScrollView(
                          child: Text(
                            textDirection: TextDirection.rtl,
                            suraContent,
                            style: const TextStyle(
                              fontSize: 20,
                              color: MyColors.Gold,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
            ],
          ),
        ));
  }

  void loadSuraContent(String suraIndex) async {
    String fileContent =
        await rootBundle.loadString("assets/files/suras/$suraIndex.txt");
    var suraLines = fileContent.trim().split("\n");
    List<String> suraLinesFinal = [];

    for (int i = 0; i < suraLines.length; i++) {
      String line = suraLines[i];
      line += "[${i + 1}]";
      suraLinesFinal.add(line);
    }
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      suraContent = suraLinesFinal.join();
    });
  }
}
