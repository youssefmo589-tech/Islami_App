import 'package:flutter/material.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  State<Quran> createState() {
    return _QuranState();
  }
}

class _QuranState extends State<Quran> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.quran.provider(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  Assets.images.group31.image(),

                  SizedBox(height: 10),
                  SizedBox(
                    width: 390,
                    height: 55,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Janna",
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Assets.icons.vector.svg(
                            colorFilter: ColorFilter.mode(
                              AppColors.gold,
                              BlendMode.srcIn,
                            ),
                            width: 24.5,
                            height: 28,
                          ),
                        ),

                        hintText: "Surah Name",
                        filled: true,
                        fillColor: Colors.black.withValues(alpha: 0.6),
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Janna",
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColors.gold),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColors.gold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
