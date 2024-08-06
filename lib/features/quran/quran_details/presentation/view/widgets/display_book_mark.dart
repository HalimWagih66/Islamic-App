import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../view_model/quran_details_view_model.dart';

class DisplayBookMark extends StatefulWidget {
  const DisplayBookMark({super.key});

  @override
  State<DisplayBookMark> createState() => _DisplayBookMarkState();
}

class _DisplayBookMarkState extends State<DisplayBookMark> {
  late QuranDetailsViewModel quranDetailsViewModel;
  Map<String, dynamic>? bookMark = {};
  @override
  Widget build(BuildContext context) {
    quranDetailsViewModel = Provider.of<QuranDetailsViewModel>(context);
    return InkWell(
      onTap: () async {
        await quranDetailsViewModel.saveBookMark(page: quranDetailsViewModel.pageVerses[0].page!.toInt(), surahNumber: quranDetailsViewModel.informationAboutTheSurahModel.number!.toInt());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
        child: getBookMark(),
      )
    );
  }
  Widget getBookMark() {
    bookMark = quranDetailsViewModel.getBookMark();
    if(bookMark == null){
      return SvgPicture.asset("assets/images/details_screen/quran_details/bookmark.svg",color: const Color(0xff7e0000),height: 50,width: 30);
    }
    if(bookMark?['page'] == quranDetailsViewModel.pageVerses[0].page && bookMark?['surahNumber'] == quranDetailsViewModel.informationAboutTheSurahModel.number?.toInt()){
      return SvgPicture.asset("assets/images/details_screen/quran_details/bookmark.svg",color: Colors.red,height: 50,width: 30);
    }else{
      return SvgPicture.asset("assets/images/details_screen/quran_details/bookmark.svg",color: const Color(0xff7e0000),height: 50,width: 30);
    }
  }
}



