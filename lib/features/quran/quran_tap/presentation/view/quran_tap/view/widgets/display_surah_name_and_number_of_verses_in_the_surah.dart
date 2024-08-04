import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../provider/settings_provider.dart';
import '../../../../../data/model/Data.dart';
import 'custom_vertical_divider.dart';

class DisplaySurahNameAndNumberOfVersesInTheSurah extends StatelessWidget {
  const DisplaySurahNameAndNumberOfVersesInTheSurah({super.key, required this.informationAboutTheSurahModel});
  final InformationAboutTheSurahModel informationAboutTheSurahModel;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return InkWell(
      onTap: () {

      },
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Table(
              children: [
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: settingsProvider.themeApp.primaryColor,style: BorderStyle.solid,width: 3.h))
                    ),
                    children: [
                      Text(informationAboutTheSurahModel.numberOfAyahs.toString(),style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri.copyWith(fontSize: 20.sp,height: 3),textAlign: TextAlign.center),
                      CustomVerticalDivider(primaryColor: settingsProvider.themeApp.primaryColor),
                      Text(informationAboutTheSurahModel.name??"",style: settingsProvider.themeApp.font20SecondPrimaryRegularAmiri,textAlign: TextAlign.center)
                    ]
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}