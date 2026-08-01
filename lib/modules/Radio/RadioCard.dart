import 'package:flutter/cupertino.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';

class Radio_RecitersCard extends StatefulWidget {
  final String txt;

  bool isplayed;

  bool volumehigh;

  Radio_RecitersCard({
    super.key,
    required this.txt,
    this.isplayed = false,
    this.volumehigh = true,
  });

  State<Radio_RecitersCard> createState() {
    return _RadioCardState();
  }
}

class _RadioCardState extends State<Radio_RecitersCard> {
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 133,
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: widget.isplayed == false
                ? Assets.images.maskGroup.image(
                    color: AppColors.black.withValues(alpha: 0.5),
                  )
                : Assets.images.soundWave1.image(
                    color: AppColors.black.withValues(alpha: 0.5),
                  ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 13),
              child: Column(
                children: [
                  Text(
                    widget.txt,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Janna",
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.isplayed = !widget.isplayed;
                            });
                          },

                          child: widget.isplayed == true
                              ? Assets.icons.pause.svg()
                              : Assets.icons.polygon2.svg(),
                        ),
                        SizedBox(width: 20),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.volumehigh = !widget.volumehigh;
                            });
                          },
                          child: widget.volumehigh == false
                              ? Assets.icons.volumeCross.svg()
                              : Assets.icons.volumeHigh.svg(),
                        ),
                      ],
                    ),
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
