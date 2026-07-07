import 'package:flutter/material.dart';

import '../../core/gen/assets.gen.dart';

class Radioo extends StatefulWidget {
  const Radioo({super.key});

  State<Radioo> createState() {
    return _RadiooState();
  }
}

class _RadiooState extends State<Radioo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.radio.provider(),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
