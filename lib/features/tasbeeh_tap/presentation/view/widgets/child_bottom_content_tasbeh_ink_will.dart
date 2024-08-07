import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ChildBottomContentInkWil extends StatelessWidget {
  const ChildBottomContentInkWil({super.key});
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    TasbeehTapViewModel tasbeehTapViewModel = Provider.of<TasbeehTapViewModel>(context);
    return Container(
          decoration: BoxDecoration(
            border: Border.symmetric(
              vertical: BorderSide(color: settingsProvider.themeApp.thirdPrimaryColor, width: 2.w, style: BorderStyle.solid),),),
      padding: const EdgeInsets.all(13),
          child: Text(
            tasbeehTapViewModel.contentTasbeeh[tasbeehTapViewModel.selectedContentTasbeeh],
            textAlign: TextAlign.center,
            style: settingsProvider.themeApp.font25ThirdColorRegularInter,
          ),
    );
  }
}
