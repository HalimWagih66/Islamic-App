import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class DisplayBodyImage extends StatelessWidget {
  const DisplayBodyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Align(
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
    );
  }
}