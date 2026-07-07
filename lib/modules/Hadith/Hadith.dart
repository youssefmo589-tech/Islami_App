import 'package:flutter/material.dart';

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
      ),
    );
  }
}
