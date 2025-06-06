import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class DisplayHeadImage extends StatelessWidget {
  const DisplayHeadImage({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 33.0),
      child: SizedBox(
        height: 105.h,
        child: AspectRatio(
          aspectRatio: 73 / 105,
          child: Image.asset(
            settingsProvider.getImageHeadSabhuh(),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
