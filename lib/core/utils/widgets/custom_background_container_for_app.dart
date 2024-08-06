import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/settings_provider.dart';

class CustomBackgroundContainerForApp extends StatelessWidget {
  const CustomBackgroundContainerForApp({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsProvider.getMainBackground()),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
