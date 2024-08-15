import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/core/utils/constants/shared_preferences_constants.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_mark_quran.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view/quran_details_view.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view_model/quran_details_view_model.dart';
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
  Map<String,dynamic>? bookMarkQuran;
  @override
  Widget build(BuildContext context) {
    bookMarkQuran = CacheMarkQuran.getBookMarkQuran();
    var quranDetailsViewModel = Provider.of<QuranDetailsViewModel>(context,listen: false);
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return InkWell(
      onTap: () {
        quranDetailsViewModel.informationAboutTheSurahModel = widget.informationAboutTheSurahModel;
        quranDetailsViewModel.isFirstPageViewBuilder = true;
        GoRouter.of(context).push(QuranDetailsView.routeName);
      },
      onLongPress: () {
        if(bookMarkQuran?[SURAH_NUMBER_KEY] == widget.informationAboutTheSurahModel.number){
          quranDetailsViewModel.informationAboutTheSurahModel = widget.informationAboutTheSurahModel;
          quranDetailsViewModel.startPage = bookMarkQuran?[PAGE_NUMBER_KEY];
          quranDetailsViewModel.pageController = PageController(initialPage: (quranDetailsViewModel.startPage!-1));
          quranDetailsViewModel.isFirstPageViewBuilder = bookMarkQuran?[PAGE_NUMBER_KEY] == 1?true:false;
          GoRouter.of(context).push(QuranDetailsView.routeName);
        }
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
                      Text(widget.informationAboutTheSurahModel.numberOfAyahs.toString(),style: settingsProvider.themeApp.font20SecondPrimaryRegularAmiri.copyWith(height: 3,fontWeight: FontWeight.w600),textAlign: TextAlign.center),
                      CustomVerticalDivider(primaryColor: settingsProvider.themeApp.primaryColor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.translate(offset: Offset(-50.w,0),child: getBookMark()),
                          Center(child: Text(settingsProvider.isLanguageEnglish()?widget.informationAboutTheSurahModel.englishName??"":widget.informationAboutTheSurahModel.name??"",style: settingsProvider.themeApp.font20SecondPrimaryRegularAmiri.copyWith(fontWeight: FontWeight.w600),textAlign: TextAlign.center)),
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
    Map<String, dynamic>? bookMark = CacheMarkQuran.getBookMarkQuran();
    if(bookMark == null){
      return const SizedBox();
    }
    if(bookMark[SURAH_NUMBER_KEY] == widget.informationAboutTheSurahModel.number){
      return SvgPicture.asset("assets/images/details_screen/quran_details/bookmark.svg",color: Colors.red,height: 30,width: 30);
    }else{
      return const SizedBox();
    }
  }
}