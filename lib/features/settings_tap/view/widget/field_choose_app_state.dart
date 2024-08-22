import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../my_application.dart';

class FieldChooseAppState extends StatelessWidget {
  const FieldChooseAppState({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.w),
      decoration: BoxDecoration(
          border: Border.all(width: 1.5.w, style: BorderStyle.solid, color: themeApp.primaryColor),
          borderRadius: BorderRadius.circular(9),
          color: themeApp.thirdPrimaryColor
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: themeApp.font25SecondPrimarySemiBoldElMessiri,
          ),
          Icon(Icons.arrow_drop_down_outlined, color: Theme.of(context).hintColor),
        ],
      ),
    );
  }
}
