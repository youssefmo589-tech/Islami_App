import 'package:flutter/material.dart';

import '../../core/gen/assets.gen.dart';

class Tasbeeh extends StatefulWidget {
  const Tasbeeh({super.key});

  State<Tasbeeh> createState() {
    return _TasbeehState();
  }
}

class _TasbeehState extends State<Tasbeeh> {
  int count = 0;

  double angle = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.images.group30.image(),
                SizedBox(height: 10),
                Text(
                  "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Janna",
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          count++;
                          angle += 0.3;
                          if (count == 31) {
                            count = 1;
                          }
                        });
                      },
                      child: Transform.rotate(
                        angle: angle,
                        child: Container(
                          child: Assets.images.sebhaBody1.image(),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 100),
                          Text(
                            "سبحان الله",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontFamily: "Janna",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            count.toString(),
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontFamily: "Janna",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
