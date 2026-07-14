import 'package:flutter/cupertino.dart';
import 'package:islami/model/sura_datamodel.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/theme/AppColors.dart';

class Recently extends StatelessWidget {
  final SuraDatamodel sura;

  const Recently({super.key, required this.sura});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.gold,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                sura.suraNameEN,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Janna",
                  color: AppColors.black,
                ),
              ),
              Text(
                sura.suraNameAR,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Janna",
                  color: AppColors.black,
                ),
              ),
              Text(
                sura.versecount.toString(),
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Janna",
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          Assets.images.imgMostRecent.image(),
        ],
      ),
    );
  }
}
