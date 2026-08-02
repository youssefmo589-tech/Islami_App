import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/sura_datamodel.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';

class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  State<QuranDetailsView> createState() {
    return _QuranDetailsViewState();
  }
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  Widget build(BuildContext context) {
    SuraDatamodel sura =
        ModalRoute.of(context)?.settings.arguments as SuraDatamodel;

    if (verses.isEmpty) readdata(sura);

    return Scaffold(
      appBar: AppBar(title: Text(sura.suraNameEN)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.images.leftcorner.image(width: 90, height: 90),
                    Text(
                      sura.suraNameAR,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.gold,
                        fontFamily: "Janna",
                      ),
                    ),
                    Assets.images.rightcorner.image(width: 90, height: 90),
                  ],
                ),
                Spacer(),
                Assets.images.maskGroup.image(),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 20),
              child: ListView.builder(
                itemCount: verses.length,
                itemBuilder: (context, index) {
                  return Text(
                    verses[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Janna",
                      color: AppColors.gold,
                      height: 1.6,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> verses = [];

  Future<void> readdata(SuraDatamodel sura) async {
    String content = await rootBundle.loadString(
      "assets/files/Quran/${sura.suranumber}.txt",
    );
    verses = content.split("\n");
    setState(() {});
  }
}
