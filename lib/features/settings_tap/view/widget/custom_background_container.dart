import 'package:flutter/cupertino.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class CustomBackgroundContainerForBottomSheet extends StatelessWidget {
  const CustomBackgroundContainerForBottomSheet({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: settingsProvider.themeApp.thirdPrimaryColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
      child: child,
    );
  }
}
