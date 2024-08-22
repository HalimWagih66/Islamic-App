import 'package:flutter/material.dart';
import '../../../../../../my_application.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.onPressed, required this.iconData});
  final void Function()? onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(iconData,color: themeApp.secondPrimaryColor,)
    );
  }
}
