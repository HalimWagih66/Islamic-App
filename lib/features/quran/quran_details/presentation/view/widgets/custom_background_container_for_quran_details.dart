import 'package:flutter/material.dart';

import '../../../../../../core/utils/widgets/custom_background_container_for_app.dart';
import '../../../../../../my_application.dart';

class CustomBackgroundContainerForQuranDetails extends StatelessWidget {
  const CustomBackgroundContainerForQuranDetails({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainerForApp(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: themeApp.thirdPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
