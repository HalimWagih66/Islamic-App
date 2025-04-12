import 'package:flutter/material.dart';
import '../../../../../my_application.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key, required this.title,this.actions, this.leading});
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: actions,
      centerTitle: true,
      title: Text(title,style: themeApp.font25SecondPrimarySemiBoldElMessiri),
      leading: leading,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 65);
}
