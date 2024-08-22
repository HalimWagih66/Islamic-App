import 'package:flutter/material.dart';

import '../../../../my_application.dart';

class CustomBackgroundContainerForBottomSheet extends StatelessWidget {
  const CustomBackgroundContainerForBottomSheet({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: themeApp.thirdPrimaryColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
      child: child,
    );
  }
}
