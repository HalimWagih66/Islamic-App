import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/theme/theme_app.dart';

import 'constant_color.dart';

class TextThemeDarkApp implements ThemeApp{
  @override
  TextStyle font25SecondPrimarySemiBoldElMessiri = TextStyle(
      fontSize: 25.sp,
      fontFamily: "ElMessiri",
      fontWeight: FontWeight.w600,
      color: secondPrimaryDarkColor
  );

  @override
  TextStyle font25SecondPrimaryRegularInter = TextStyle(
      fontSize: 25.sp,
      fontFamily: "Inter",
      fontWeight: FontWeight.w400,
      color: secondPrimaryDarkColor
  );

  @override
  TextStyle font12SecondPrimaryRegularInter = TextStyle(
      fontSize: 15.sp,
      fontFamily: "Inter",
      fontWeight: FontWeight.w400,
      color: secondPrimaryDarkColor
  );

  @override
  TextStyle font25ThirdColorRegularInter = TextStyle(
      fontSize: 25.sp,
      fontFamily: "Inter",
      fontWeight: FontWeight.w400,
      color: thirdDarkColor
  );

  @override
  Color primaryColor = primaryDarkColor;

  @override
  Color secondPrimaryColor = secondPrimaryDarkColor;

  @override
  TextStyle font20SecondPrimaryRegularAmiri = TextStyle(
      fontSize: 20.sp,
      height: 3,
      fontWeight: FontWeight.w400,
      fontFamily: "Amiri",
      color: secondPrimaryDarkColor
  );

  @override
  Color thirdPrimaryColor = thirdDarkColor;

  @override
  TextStyle fontElquran = TextStyle(
    fontFamily: "UthmanicHafs",
    fontSize: 25.sp,
    height: 2,
    color: secondPrimaryDarkColor,
    fontWeight: FontWeight.w500,
  );

}