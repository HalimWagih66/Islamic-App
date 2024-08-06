
import 'package:flutter/material.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class CustomVerticalDividerForContentTasbeeh extends StatelessWidget {
  const CustomVerticalDividerForContentTasbeeh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return VerticalDivider(
      color: settingsProvider.themeApp.thirdPrimaryColor,
      width: 2,
    );
  }
}