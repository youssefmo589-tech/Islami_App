import 'package:flutter/cupertino.dart';
import 'package:islami/modules/Hadith/HaddithDataModel.dart';

import '../../core/theme/AppColors.dart';
import 'haddithbackground.dart';

class HaddithCard extends StatelessWidget {
  final HaddithDataModel hadith;

  const HaddithCard({super.key, required this.hadith});

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Hadithbackground(),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
            child: SingleChildScrollView(
              child: Column(
                spacing: 10,
                children: [
                  Text(
                    hadith.haddithtitle,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    hadith.haddithcontent,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
