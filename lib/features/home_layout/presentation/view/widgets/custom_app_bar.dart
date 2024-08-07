import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../provider/settings_provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key, required this.title,this.actions, this.leading});
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: actions,
      centerTitle: true,
      title: Text(title,style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri),
      leading: leading,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 65);
}
