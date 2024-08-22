import 'package:flutter/material.dart';
import '../../../../../../my_application.dart';

class CustomBackgroundContainerForWidgetsAzkarDetails extends StatelessWidget {
  const CustomBackgroundContainerForWidgetsAzkarDetails({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: themeApp.thirdPrimaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: themeApp.primaryColor,width: 2),
      ),
      child: child,
    );
  }
}
