import 'package:flutter/cupertino.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/theme/AppColors.dart';
import '../../../model/sura_datamodel.dart';

class SuraItem extends StatefulWidget {
  final SuraDatamodel Sura;
  final Function() ontap;

  const SuraItem({super.key, required this.Sura, required this.ontap});

  State<SuraItem> createState() {
    return _SuraItemState();
  }
}

class _SuraItemState extends State<SuraItem> {
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        widget.ontap();
      },
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.imgSurNumberFrame.provider(),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.Sura.suranumber.toString(),
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.Sura.suraNameEN,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
              Text(
                widget.Sura.versecount.toString(),
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            widget.Sura.suraNameAR,
            style: TextStyle(
              fontFamily: "Janna",
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
