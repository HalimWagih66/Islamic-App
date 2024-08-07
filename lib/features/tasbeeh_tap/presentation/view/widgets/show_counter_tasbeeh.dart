import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/theme/constant_color.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';


class ShowCounterTasbeeh extends StatelessWidget {
  const ShowCounterTasbeeh({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var tasbeehTapViewModel = Provider.of<TasbeehTapViewModel>(context);
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () async{
        await tasbeehTapViewModel.onTapClickButtonCounterTasbeeh();
      },
      onLongPress: () async {
        await tasbeehTapViewModel.onLongPressClickButtonCounterTasbeeh();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: settingsProvider.isDarkEnabled()?thirdDarkColor:const Color(0xffc9b496),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.h),
        child: Text(tasbeehTapViewModel.counterTasbeeh.toString(), style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri),
      ),
    );
  }
}
