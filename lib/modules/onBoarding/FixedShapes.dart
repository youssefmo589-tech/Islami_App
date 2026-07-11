import 'package:flutter/material.dart';
import 'package:islami/core/AppRoutes/AppRouteName.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';

class FixedShapes extends StatelessWidget {
  final int index;

  final PageController controller;

  const FixedShapes({super.key, required this.index, required this.controller});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 291,
                height: 171,
                child: Assets.images.group31.image(),
              ),
            ),
            Spacer(),
            index == 0
                ? Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },

                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.gold,
                          fontFamily: "Janna",
                        ),
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.gold,
                            fontFamily: "Janna",
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (index == 4) {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRouteName.layout,
                              (route) => false,
                            );
                          }
                          controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.gold,
                            fontFamily: "Janna",
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
