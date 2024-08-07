import 'package:flutter/material.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class CustomBackgroundContainerForWidgetsAzkarDetails extends StatelessWidget {
  const CustomBackgroundContainerForWidgetsAzkarDetails({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: settingsProvider.themeApp.thirdPrimaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: settingsProvider.themeApp.primaryColor,width: 2),
      ),
      child: child,
    );
  }
}
