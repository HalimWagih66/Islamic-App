import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/core/utils/theme/theme_app.dart';

import 'constant_color.dart';
class TextThemeLightApp implements ThemeApp{
  @override
  TextStyle font25SecondPrimarySemiBoldElMessiri = GoogleFonts.elMessiri(
    fontSize: 25.sp,
    fontWeight: FontWeight.w600,
    color: secondPrimaryLightColor
  );

  @override
  TextStyle font25SecondPrimaryRegularInter = GoogleFonts.inter(
      fontSize: 25.sp,
      fontWeight: FontWeight.w400,
      color: secondPrimaryLightColor
  );

  @override
  TextStyle font12SecondPrimaryRegularInter = GoogleFonts.inter(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: secondPrimaryLightColor
  );

  @override
  TextStyle font25ThirdColorRegularInter = GoogleFonts.inter(
      fontSize: 25.sp,
      fontWeight: FontWeight.w400,
      color: thirdLightColor
  );

}