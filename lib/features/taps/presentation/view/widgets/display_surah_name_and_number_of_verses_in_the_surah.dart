import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../home_layout/presentation/view_model/home_layout_view_model.dart';
import 'custom_vertical_divider.dart';

class DisplaySurahNameAndNumberOfVersesInTheSurah extends StatelessWidget {
  const DisplaySurahNameAndNumberOfVersesInTheSurah({super.key});

  @override
  Widget build(BuildContext context) {
    HomeLayoutViewModel homeLayoutViewModel = Provider.of<HomeLayoutViewModel>(context,listen: false);
    return Column(
      children: [
        Table(
          children: [
            TableRow(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: homeLayoutViewModel.themeApp.primaryColor,style: BorderStyle.solid,width: 3.h))
                ),
                children: [
                  Text("77",style: homeLayoutViewModel.themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.center,),
                  CustomVerticalDivider(primaryColor: homeLayoutViewModel.themeApp.primaryColor),
                  Text("Taha",style: homeLayoutViewModel.themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.center)
                ]
            )
          ],
        )
      ],
    );
  }
}