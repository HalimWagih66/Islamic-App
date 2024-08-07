import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/utils/widgets/custom_background_container_for_app.dart';
import '../../../../../../provider/settings_provider.dart';

class CustomBackgroundContainerForQuranDetails extends StatelessWidget {
  const CustomBackgroundContainerForQuranDetails({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return CustomBackgroundContainerForApp(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: settingsProvider.themeApp.thirdPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
