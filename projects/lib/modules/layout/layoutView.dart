import 'package:flutter/material.dart';
import 'package:projects/modules/haddith/haddith.dart';
import 'package:projects/modules/quran/quran.dart';
import 'package:projects/modules/radio/radio.dart';
import 'package:projects/modules/tasbeeh/tasbeeh.dart';
import 'package:projects/modules/timer/timer.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';

class layoutView extends StatefulWidget {
  const layoutView({super.key});

  State<layoutView> createState() {
    return _layoutViewState();
  }
}

class _layoutViewState extends State<layoutView> {
  int currentindex = 0;

  List<Widget> pages = [Quran(), Hadith(), Tasbeeh(), Radioo(), Timerr()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],

      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: "Janna",
          color: Colors.white,
        ),
        selectedItemColor: Colors.white,
        backgroundColor: AppColors.gold,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.vector.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            label: "Quran",
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Assets.icons.vector.svg(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  height: 18.416664123535156,
                  width: 20.833332061767578,
                ),
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: Assets.icons.vector.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            label: "Haddith",
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Assets.icons.icHadeth.svg(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  height: 18.416664123535156,
                  width: 20.833332061767578,
                ),
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: Assets.icons.vector.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            label: "Tasbeeh",
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Assets.icons.icSebha.svg(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  height: 18.416664123535156,
                  width: 20.833332061767578,
                ),
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: Assets.icons.vector.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            label: "Radio",
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Assets.icons.icRadio.svg(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  height: 18.416664123535156,
                  width: 20.833332061767578,
                ),
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: Assets.icons.vector.svg(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            label: "Time",
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Assets.icons.icTime.svg(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  height: 18.416664123535156,
                  width: 20.833332061767578,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
