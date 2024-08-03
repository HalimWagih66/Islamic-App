import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayHeadImage extends StatelessWidget {
  const DisplayHeadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 33.0),
      child: SizedBox(
        height: 105.h,
        child: AspectRatio(
          aspectRatio: 73 / 105,
          child: Image.asset(
            "assets/images/home layout/Tasbeeh_tap/light/head of seb7a.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
