import 'package:flutter/cupertino.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';

class Hadithbackground extends StatelessWidget {
  const Hadithbackground({super.key});

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Opacity(
            opacity: 0.25,
            child: Assets.images.a8ecd90f9c0f697364f4eaf0fa31d777f4485ee6b
                .image(width: 313, height: 428),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.images.leftcorner.image(
                    width: 90,
                    height: 90,
                    color: AppColors.black,
                  ),
                  Assets.images.rightcorner.image(
                    width: 90,
                    height: 90,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),
            Spacer(),
            Assets.images.maskGroup.image(color: AppColors.black),
          ],
        ),
      ],
    );
  }
}
