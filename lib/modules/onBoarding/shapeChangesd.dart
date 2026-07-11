import 'package:flutter/cupertino.dart';
import 'package:islami/modules/onBoarding/Pages.dart';

import '../../core/theme/AppColors.dart';

class shapeChange extends StatefulWidget {
  final Pages page;

  shapeChange({super.key, required this.page});

  State<shapeChange> createState() {
    return _shapeChangeState();
  }
}

class _shapeChangeState extends State<shapeChange> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 75),
          SizedBox(width: 387, height: 408, child: widget.page.photo),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.page.firstdescribe,
              style: TextStyle(
                fontFamily: "Janna",
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: AppColors.gold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.page.seconddescribe,
              style: TextStyle(
                fontFamily: "Janna",
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: AppColors.gold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
