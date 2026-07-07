import 'package:flutter/material.dart';

import '../../core/gen/assets.gen.dart';

class Timerr extends StatefulWidget {
  const Timerr({super.key});

  State<Timerr> createState() {
    return _TimerrState();
  }
}

class _TimerrState extends State<Timerr> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.time.provider(),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
