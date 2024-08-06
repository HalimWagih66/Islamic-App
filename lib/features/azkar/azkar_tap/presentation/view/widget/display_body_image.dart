import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class DisplayBodyImage extends StatelessWidget {
  const DisplayBodyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var tasbeehTapViewModel = Provider.of<TasbeehTapViewModel>(context);
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: tasbeehTapViewModel.onTapClickButtonCounterTasbeeh,
      child: Transform.rotate(
        angle: tasbeehTapViewModel.angle,
        child: Align(
          heightFactor: 0.77,
          child: SizedBox(
            height: 234.h,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                settingsProvider.getImageBodySabhuh(),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}