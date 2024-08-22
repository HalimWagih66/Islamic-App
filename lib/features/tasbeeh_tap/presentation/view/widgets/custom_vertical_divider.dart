
import 'package:flutter/material.dart';
import '../../../../../my_application.dart';

class CustomVerticalDividerForContentTasbeeh extends StatelessWidget {
  const CustomVerticalDividerForContentTasbeeh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: themeApp.thirdPrimaryColor,
      width: 2,
    );
  }
}