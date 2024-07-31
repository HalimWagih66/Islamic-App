import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/my_application.dart';

void main() {
  runApp(const ScreenUtilInit(
      designSize: Size(412,873),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MyApplication()));
}
