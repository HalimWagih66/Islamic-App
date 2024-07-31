import 'package:flutter/material.dart';
import 'package:islamic_app/features/home_layout/presentation/view_model/home_layout_view_model.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key, required this.title,this.leading});
  final String title;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    HomeLayoutViewModel homeLayoutViewModel = Provider.of<HomeLayoutViewModel>(context);
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(title,style: homeLayoutViewModel.themeApp.font25SecondPrimarySemiBoldElMessiri),
      leading: leading,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 65);
}
