import 'package:flutter/material.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import 'button_style_bottom_sheet.dart';

class CustomElevatedButtonForBottomSheet extends StatelessWidget {
  const CustomElevatedButtonForBottomSheet({super.key, required this.child, required this.onPressed});
  final Widget Function(BuildContext context) child;
  final Future<void> Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return ElevatedButton(
      style: buttonStyleBottomSheet(alignmentGeometry: settingsProvider.isLanguageEnglish()?Alignment.centerLeft:Alignment.centerRight,context:context,backgroundColor: settingsProvider.isDarkEnabled() ? const Color(0x64414d7c) : const Color(0x51eacc92)),
      onPressed: onPressed,
      child: child(context),
    );
  }
}
