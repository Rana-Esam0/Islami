import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_earth/colors.dart';

class Hadithcardwidget extends StatefulWidget {
  const Hadithcardwidget({super.key, required this.index});
  final int index;

  @override
  State<Hadithcardwidget> createState() => _HadithcardwidgetState();
}

class _HadithcardwidgetState extends State<Hadithcardwidget> {
  Hadith? hadith;
  @override
  void initState() {
    loadHadithContent();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 12),
      color: MyColors.Gold,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/bgHadeeth.png"))),
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: hadith == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              color: Colors.black,
                            ),
                            Image.asset(
                              "assets/images/Mask group (1).png",
                              color: Colors.black,
                            )
                          ],
                        ),
                        Text(
                          hadith!.title,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: MyColors.Black),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          hadith!.content,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: MyColors.Black,
                              fontFamily: "Janna LT"),
                        ),
                      ),
                    )
                  ],
                )),
    );
  }

  void loadHadithContent() async {
    String hadithContent = await rootBundle
        .loadString("assets/files/Hadeeth/h${widget.index}.txt");
    String title = hadithContent.substring(0, hadithContent.indexOf("\n"));
    String content = hadithContent.substring(hadithContent.indexOf("\n") + 1);

    print(title);
    print(content);
    hadith = Hadith(content: content, title: title);
    await Future.delayed(const Duration(seconds: 1));
    setState(() {});
  }
}

class Hadith {
  String title;
  String content;
  Hadith({required this.content, required this.title});
}
