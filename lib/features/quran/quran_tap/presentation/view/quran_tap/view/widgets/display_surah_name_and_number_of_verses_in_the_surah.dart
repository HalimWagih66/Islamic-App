import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../../../home_layout/presentation/view_model/home_layout_view_model.dart';
import '../../../../../data/model/Data.dart';
import 'custom_vertical_divider.dart';

class DisplaySurahNameAndNumberOfVersesInTheSurah extends StatelessWidget {
  const DisplaySurahNameAndNumberOfVersesInTheSurah({super.key, required this.informationAboutTheSurahModel});
  final InformationAboutTheSurahModel informationAboutTheSurahModel;
  @override
  Widget build(BuildContext context) {
    HomeLayoutViewModel homeLayoutViewModel = Provider.of<HomeLayoutViewModel>(context,listen: false);
    return InkWell(
      onTap: () {

      },
      child: Column(
        children: [
          Table(
            children: [
              TableRow(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: homeLayoutViewModel.themeApp.primaryColor,style: BorderStyle.solid,width: 3.h))
                  ),
                  children: [
                    Text(informationAboutTheSurahModel.numberOfAyahs.toString(),style: homeLayoutViewModel.themeApp.font25SecondPrimarySemiBoldElMessiri.copyWith(fontSize: 20.sp,height: 3),textAlign: TextAlign.center),
                    CustomVerticalDivider(primaryColor: homeLayoutViewModel.themeApp.primaryColor),
                    Text(informationAboutTheSurahModel.name??"",style: homeLayoutViewModel.themeApp.font20SecondPrimaryRegularAmiri,textAlign: TextAlign.center)
                  ]
              )
            ],
          )
        ],
      ),
    );
  }
}