import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key, required this.primaryColor});
  final Color primaryColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child:  VerticalDivider(
        color: primaryColor,
        thickness: 3,
      ),
    );
  }
}