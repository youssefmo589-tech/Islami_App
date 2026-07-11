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


    // return SafeArea(
    //   child: Scaffold(
    //     body: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Container(height: 151, width: 291, child: widget.logo),
    //
    //           widget.photo,
    //
    //           Text(
    //             widget.firstdescribe,
    //             style: TextStyle(
    //               fontSize: 24,
    //               fontWeight: FontWeight.w700,
    //               color: AppColors.gold,
    //               fontFamily: "Janna",
    //             ),
    //           ),
    //
    //           widget.isseconddesc == true
    //               ? Text(
    //                   widget.seconddescribe,
    //                   style: TextStyle(
    //                     fontSize: 20,
    //                     fontWeight: FontWeight.w700,
    //                     color: AppColors.gold,
    //                     fontFamily: "Janna",
    //                   ),
    //                   textAlign: TextAlign.center,
    //                 )
    //               : SizedBox(),
    //           Spacer(),
    //
    //           Row(
    //             children: [
    //               TextButton(
    //                 onPressed: () {
    //                   if (widget.pagenum > 1) {
    //                     Navigator.of(context).pop();
    //                   }
    //                 },
    //                 child: widget.isback == true
    //                     ? Text(
    //                         "Back",
    //                         style: TextStyle(
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.w700,
    //                           color: AppColors.gold,
    //                           fontFamily: "Janna",
    //                         ),
    //                         textAlign: TextAlign.start,
    //                       )
    //                     : SizedBox(),
    //               ),
    //
    //               Expanded(
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Container(
    //                       width: 7,
    //                       height: 7,
    //                       decoration: BoxDecoration(
    //                         color: widget.pagenum == 1
    //                             ? AppColors.gold
    //                             : AppColors.grey,
    //                         shape: BoxShape.circle,
    //                       ),
    //                     ),
    //                     SizedBox(width: 8),
    //                     Container(
    //                       width: 7,
    //                       height: 7,
    //                       decoration: BoxDecoration(
    //                         color: widget.pagenum == 2
    //                             ? AppColors.gold
    //                             : AppColors.grey,
    //                         shape: BoxShape.circle,
    //                       ),
    //                     ),
    //                     SizedBox(width: 8),
    //                     Container(
    //                       width: 7,
    //                       height: 7,
    //                       decoration: BoxDecoration(
    //                         color: widget.pagenum == 3
    //                             ? AppColors.gold
    //                             : AppColors.grey,
    //                         shape: BoxShape.circle,
    //                       ),
    //                     ),
    //                     SizedBox(width: 8),
    //                     Container(
    //                       width: 7,
    //                       height: 7,
    //                       decoration: BoxDecoration(
    //                         color: widget.pagenum == 4
    //                             ? AppColors.gold
    //                             : AppColors.grey,
    //                         shape: BoxShape.circle,
    //                       ),
    //                     ),
    //                     SizedBox(width: 8),
    //                     Container(
    //                       width: 7,
    //                       height: 7,
    //                       decoration: BoxDecoration(
    //                         color: widget.pagenum == 5
    //                             ? AppColors.gold
    //                             : AppColors.grey,
    //                         shape: BoxShape.circle,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //
    //               TextButton(
    //                 onPressed: () async {
    //                   if (widget.pagenum > 0 && widget.pagenum <= 5) {
    //                     if (widget.pagenum == 1) {
    //                       Navigator.of(context).push(
    //                         MaterialPageRoute(
    //                           builder: (context) => OnBoarding(
    //                             photo: Onboardingimages.secondScreen,
    //                             firstdescribe:
    //                                 OnBoardingTexts.secondpagefdescribe,
    //                             seconddescribe:
    //                                 OnBoardingTexts.secondpagesdescribe,
    //                             isback: true,
    //                             isseconddesc: true,
    //                             pagenum: 2,
    //                           ),
    //                         ),
    //                       );
    //                     } else if (widget.pagenum == 2) {
    //                       Navigator.of(context).push(
    //                         MaterialPageRoute(
    //                           builder: (context) => OnBoarding(
    //                             photo: Onboardingimages.thirdScreen,
    //                             firstdescribe:
    //                                 OnBoardingTexts.thirdpagefdescribe,
    //                             seconddescribe:
    //                                 OnBoardingTexts.thirdpagesdescribe,
    //                             isback: true,
    //                             isseconddesc: true,
    //                             pagenum: 3,
    //                           ),
    //                         ),
    //                       );
    //                     } else if (widget.pagenum == 3) {
    //                       Navigator.of(context).push(
    //                         MaterialPageRoute(
    //                           builder: (context) => OnBoarding(
    //                             photo: Onboardingimages.fourthScreen,
    //                             firstdescribe:
    //                                 OnBoardingTexts.fourthpagefdescribe,
    //                             seconddescribe:
    //                                 OnBoardingTexts.fourthpagesdescribe,
    //                             isback: true,
    //                             isseconddesc: true,
    //                             pagenum: 4,
    //                           ),
    //                         ),
    //                       );
    //                     } else if (widget.pagenum == 4) {
    //                       Navigator.of(context).push(
    //                         MaterialPageRoute(
    //                           builder: (context) => OnBoarding(
    //                             photo: Onboardingimages.fiveScreen,
    //                             firstdescribe:
    //                                 OnBoardingTexts.fivepagefdescribe,
    //                             seconddescribe:
    //                                 OnBoardingTexts.fivepagesdescribe,
    //                             isback: true,
    //                             isseconddesc: true,
    //                             pagenum: 5,
    //                           ),
    //                         ),
    //                       );
    //                     } else if (widget.pagenum == 5) {
    //                       // final prefs  =await
    //                       // SharedPreferences.getInstance() ;
    //                       // await
    //                       // prefs.setBool("seen", true) ;
    //
    //                       Navigator.pushAndRemoveUntil(
    //                         context,
    //                         MaterialPageRoute(
    //                           builder: (context) => layoutView(),
    //                         ),
    //                         (route) => false,
    //                       );
    //                       // Navigator.pushNamedAndRemoveUntil(context, AppRouteName.layout, (route)=> false)  ;
    //                     }
    //                   }
    //                 },
    //                 child: Text(
    //                   "Next",
    //                   style: TextStyle(
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w700,
    //                     color: AppColors.gold,
    //                     fontFamily: "Janna",
    //                   ),
    //                   textAlign: TextAlign.end,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
