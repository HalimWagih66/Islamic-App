import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/theme/theme_app.dart';

import 'constant_color.dart';
class TextThemeLightApp implements ThemeApp{
  @override
  TextStyle font25SecondPrimarySemiBoldElMessiri = TextStyle(
    fontFamily: "ElMessiri",
    fontSize: 25.sp,
    fontWeight: FontWeight.w600,
    color: secondPrimaryLightColor
  );
  @override
  TextStyle font20SecondPrimaryRegularAmiri = TextStyle(
      fontSize: 20.sp,
      height: 3,
      fontWeight: FontWeight.w400,
      fontFamily: "Amiri",
      color: secondPrimaryLightColor
  );
  @override
  TextStyle font25SecondPrimaryRegularInter = TextStyle(
      fontSize: 25.sp,
      fontFamily: "Inter",
      fontWeight: FontWeight.w400,
      color: secondPrimaryLightColor
  );

  @override
  TextStyle font12SecondPrimaryRegularInter = TextStyle(
      fontSize: 15.sp,
      fontFamily: "Inter",
      fontWeight: FontWeight.w400,
      color: secondPrimaryLightColor
  );

  @override
  TextStyle font25ThirdColorRegularInter = TextStyle(
      fontSize: 25.sp,
      fontFamily: "Inter",
      fontWeight: FontWeight.w400,
      color: thirdLightColor
  );

  @override
  Color primaryColor = primaryLightColor;

  @override
  Color secondPrimaryColor = secondPrimaryLightColor;

  @override
  Color thirdPrimaryColor = thirdLightColor;

  @override
  TextStyle fontElquran = TextStyle(
    fontFamily: "UthmanicHafs",
    fontSize: 25.sp,
    color: secondPrimaryLightColor,
    fontWeight: FontWeight.w500,
  );
}