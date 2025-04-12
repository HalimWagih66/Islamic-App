import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../my_application.dart';

class CustomElevatedButtonForCounter extends StatelessWidget {
  const CustomElevatedButtonForCounter({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 69.w,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: const Color(0xffcab597),
            padding: const EdgeInsets.symmetric(vertical: 23)
        ),
        child: Text("1",style: themeApp.font25SecondPrimarySemiBoldElMessiri,),

      ),
    );
  }
}
