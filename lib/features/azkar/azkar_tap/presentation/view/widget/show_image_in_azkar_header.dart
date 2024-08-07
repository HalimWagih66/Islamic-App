import 'package:flutter/material.dart';

class ShowImageInAzkarHeader extends StatelessWidget {
  const ShowImageInAzkarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2/1,child: SizedBox(child: Image.asset("assets/images/home layout/azkar_tap/azkar.png",height: 300,)));
  }
}


