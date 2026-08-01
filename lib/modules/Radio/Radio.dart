import 'package:flutter/material.dart';
import 'package:islami/modules/Radio/RadioCard.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';

class Radioo extends StatefulWidget {
  const Radioo({super.key});

  State<Radioo> createState() {
    return _RadiooState();
  }
}

class _RadiooState extends State<Radioo> {
  bool _isradioselected = false;

  List<RadioCard>radiolist = [
    RadioCard(txt: "Radio Ibrahim Al-Akdar"),
    RadioCard(txt: "Radio Al-Qaria Yassen"),

    RadioCard(txt: "Radio Ahmed Al-trabulsi"),

    RadioCard(txt: "Radio Addokali Mohammad Alalim"),


  ];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.radio.provider(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                        width: 291, height: 171,
                        child: Assets.images.group33.image()),

                    Stack(
                      children: [
                        Container(
                          height: 40, width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.4),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(

                            children: [
                              Expanded(
                                flex: _isradioselected ? 8 : 10,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isradioselected = true;
                                      });
                                    },

                                    child: _isradioselected == true ? Container(

                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              12),
                                          color: AppColors.gold,
                                        ),
                                        child: Center(child: Text("Radio",
                                          style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.black,
                                              fontFamily: "Janna"),)))
                                        : Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              12),
                                          color: Colors.transparent,
                                        ),
                                        child: Center(child: Text("Radio",
                                          style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.white,
                                              fontFamily: "Janna"),)))


                                ),
                              ),

                              Expanded(
                                flex: _isradioselected ? 10 : 8,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isradioselected = false;
                                      });
                                    },
                                    child: _isradioselected == false
                                        ? Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              12),
                                          color: AppColors.gold,
                                        ),
                                        child: Center(child: Text("Reciters",
                                          style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.black,
                                              fontFamily: "Janna"),)))
                                        : Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              12),
                                          color: Colors.transparent,
                                        ),
                                        child: Center(child: Text("Reciters",
                                          style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.white,
                                              fontFamily: "Janna"),)))
                                ),
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 10,),

                    ListView.separated(
                      padding: EdgeInsets.only(bottom: 10),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),

                      itemBuilder: (context, index) {
                        return RadioCard(txt: radiolist[index].txt);
                      },

                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10,);
                      },

                      itemCount: radiolist.length,

                    )


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
