import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/modules/Hadith/HaddithCard.dart';
import 'package:islami/modules/Hadith/HaddithDataModel.dart';

import '../../core/gen/assets.gen.dart';

class Hadith extends StatefulWidget {
  const Hadith({super.key});

  State<Hadith> createState() {
    return _HadithState();
  }
}

class _HadithState extends State<Hadith> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.haddith.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Assets.images.group31.image(),
            CarouselSlider(
                items: hadith.map((item) => HaddithCard(hadith: item)).toList(),
                options: CarouselOptions(

                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.6,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                )

            )

          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadHadithData();
  }

  List<HaddithDataModel>hadith = [];

  Future<void> loadHadithData() async
  {
    for (int i = 1; i <= 50; i++) {
      final String content = await rootBundle.loadString(
          "assets/files/Hddith/h${i}.txt");
      final titlelength = content.indexOf("\n");
      final haddithtitle = content.substring(0, titlelength);
      final haddithcontent = content.substring(titlelength + 1);

      final haddithData = HaddithDataModel(
          haddithtitle: haddithtitle, haddithcontent: haddithcontent);

      hadith.add(haddithData);
    }
    setState(() {

    });
  }
}
