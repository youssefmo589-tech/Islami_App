import 'package:flutter/material.dart';
import 'package:islami/modules/Hadith/Hadith.dart';
import 'package:islami/modules/Quran/Quran.dart';
import 'package:islami/modules/Tasbeeh/Tasbeeh.dart';
import 'package:islami/modules/Timer/Timer.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';
import '../Radio/Radio.dart';

class layoutView extends StatefulWidget {
  const layoutView({super.key});

  State<layoutView> createState() {
    return _layoutViewState();
  }
}

class _layoutViewState extends State<layoutView> {
  @override
  int currentindex = 0;

  List<Widget> pages = [Quran(), Hadith(), Tasbeeh(), Radioo(), Timerr()];

  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.gold,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: "Janna",
        ),
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.quran.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: Colors.black.withValues(alpha: 0.6),
              ),
              child: Assets.icons.quran.svg(
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),

            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icHadeth.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: Colors.black.withValues(alpha: 0.6),
              ),
              child: Assets.icons.icHadeth.svg(
                height: 25,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
            label: "Haddith",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icSebha.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: Colors.black.withValues(alpha: 0.6),
              ),
              child: Assets.icons.icSebha.svg(
                height: 25,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),

            label: "Tasbeeh",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icRadio.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: Colors.black.withValues(alpha: 0.6),
              ),
              child: Assets.icons.icRadio.svg(
                height: 25,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icTime.svg(
              height: 25,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: Colors.black.withValues(alpha: 0.6),
              ),
              child: Assets.icons.icTime.svg(
                height: 25,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
            label: "Timer",
          ),
        ],
      ),
    );
  }
}
