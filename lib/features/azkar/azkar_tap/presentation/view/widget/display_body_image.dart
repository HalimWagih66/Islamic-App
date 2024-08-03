import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayBodyImage extends StatelessWidget {
  const DisplayBodyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      heightFactor: 0.77,
      child: SizedBox(
        height: 234.h,
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            "assets/images/home layout/Tasbeeh_tap/light/body of seb7a.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}