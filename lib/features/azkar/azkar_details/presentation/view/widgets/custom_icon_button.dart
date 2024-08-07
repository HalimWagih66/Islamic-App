import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/settings_provider.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.onPressed, required this.iconData});
  final void Function()? onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return IconButton(
        onPressed: onPressed,
        icon: Icon(iconData,color: settingsProvider.themeApp.secondPrimaryColor,)
    );
  }
}
