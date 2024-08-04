import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class FieldChooseAppState extends StatelessWidget {
  const FieldChooseAppState({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.w),
      decoration: BoxDecoration(
          border: Border.all(width: 1.5.w, style: BorderStyle.solid, color: settingsProvider.themeApp.primaryColor),
          borderRadius: BorderRadius.circular(9),
          color: settingsProvider.themeApp.thirdPrimaryColor
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri,
          ),
          Icon(Icons.arrow_drop_down_outlined, color: Theme.of(context).hintColor),
        ],
      ),
    );
  }
}
