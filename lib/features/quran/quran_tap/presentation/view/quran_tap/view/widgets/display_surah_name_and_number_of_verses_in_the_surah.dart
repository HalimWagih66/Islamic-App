import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_mark_quran.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view/quran_details_view.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../provider/settings_provider.dart';
import '../../../../../data/model/Data.dart';
import 'custom_vertical_divider.dart';

class DisplaySurahNameAndNumberOfVersesInTheSurah extends StatefulWidget {
  const DisplaySurahNameAndNumberOfVersesInTheSurah({super.key, required this.informationAboutTheSurahModel});
  final InformationAboutTheSurahModel informationAboutTheSurahModel;

  @override
  State<DisplaySurahNameAndNumberOfVersesInTheSurah> createState() => _DisplaySurahNameAndNumberOfVersesInTheSurahState();
}

class _DisplaySurahNameAndNumberOfVersesInTheSurahState extends State<DisplaySurahNameAndNumberOfVersesInTheSurah> {
  @override
  void initState() {
    super.initState();

    CacheMarkQuran.getMarkQuran();
  }
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(QuranDetailsView.routeName,extra: widget.informationAboutTheSurahModel);
      },
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Table(
              columnWidths: const {
                0:FlexColumnWidth(3),
                1:FlexColumnWidth(1),
                2:FlexColumnWidth(3)
              },
              children: [
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: settingsProvider.themeApp.primaryColor,style: BorderStyle.solid,width: 3.h))
                    ),
                    children: [
                      Text(widget.informationAboutTheSurahModel.numberOfAyahs.toString(),style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri.copyWith(fontSize: 20.sp,height: 3),textAlign: TextAlign.center),
                      CustomVerticalDivider(primaryColor: settingsProvider.themeApp.primaryColor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          getBookMark(),
                          Center(child: Text(settingsProvider.isLanguageEnglish()?widget.informationAboutTheSurahModel.englishName??"":widget.informationAboutTheSurahModel.name??"",style: settingsProvider.themeApp.font20SecondPrimaryRegularAmiri,textAlign: TextAlign.center)),
                        ],
                      )
                    ]
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget getBookMark(){
    Map<String, dynamic>? bookMark = CacheMarkQuran.getMarkQuran();
    if(bookMark == null){
      return const SizedBox();
    }
    if(bookMark['surahNumber'] == widget.informationAboutTheSurahModel.number){
      return Row(
        children: [
          SvgPicture.asset("assets/images/details_screen/quran_details/bookmark.svg",color: Colors.red,height: 30,width: 30),
          const SizedBox(width: 5),
        ],
      );
    }else{
      return const SizedBox();
    }
  }
}