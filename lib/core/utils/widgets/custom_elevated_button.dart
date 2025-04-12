import 'package:flutter/material.dart';


class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.onPressed, required this.child, this.onLongPress});
  final void Function()? onPressed;
  final Widget child;
  final void Function()? onLongPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        onLongPress: onLongPress,
        child: child,
    );
  }
}
