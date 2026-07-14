import 'package:flutter/material.dart';
import 'package:islami/modules/onBoarding/FixedShapes.dart';
import 'package:islami/modules/onBoarding/images/onboardingimages.dart';
import 'package:islami/modules/onBoarding/shapeChangesd.dart';

import '../../core/theme/AppColors.dart';
import 'Pages.dart';
import 'Texts/OnBoardingTexts.dart';

class OnBoarding extends StatefulWidget {

  OnBoarding({
    super.key,
  });


  State<OnBoarding> createState() {
    return _OnBoardingState();
  }
}

class _OnBoardingState extends State<OnBoarding> {
  int currentindex = 0;

  final PageController controller = PageController();

  List<Pages>pages = [
    Pages(
      photo: Onboardingimages.firstScreen,
      firstdescribe: OnBoardingTexts.firstpagefdescribe,
      seconddescribe: "",
    ),

    Pages(
      photo: Onboardingimages.secondScreen,
      firstdescribe: OnBoardingTexts.secondpagefdescribe,
      seconddescribe: OnBoardingTexts.secondpagesdescribe,
    ),

    Pages(
      photo: Onboardingimages.thirdScreen,
      firstdescribe: OnBoardingTexts.thirdpagefdescribe,
      seconddescribe: OnBoardingTexts.thirdpagesdescribe,
    ),

    Pages(
      photo: Onboardingimages.fourthScreen,
      firstdescribe: OnBoardingTexts.fourthpagefdescribe,
      seconddescribe: OnBoardingTexts.fourthpagesdescribe,
    ),
    Pages(
      photo: Onboardingimages.fiveScreen,
      firstdescribe: OnBoardingTexts.fivepagefdescribe,
      seconddescribe: OnBoardingTexts.fivepagesdescribe,
    )
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FixedShapes(index: currentindex, controller: controller,),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            bottom: 50,
            child: PageView.builder(
                controller: controller,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return shapeChange(page: pages[index]);
                }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  List.generate(pages.length,
                          (index) =>
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            width: currentindex == index ? 20 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: currentindex == index
                                  ? AppColors.gold
                                  : AppColors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),

                          )

                  )

              ),
          ),

          )
        ],
      ),
    );
  }
}
