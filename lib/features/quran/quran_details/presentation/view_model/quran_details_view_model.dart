import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_mark_quran.dart';
import 'package:islamic_app/features/quran/quran_details/data/model/ayah_model.dart';
import 'package:islamic_app/features/quran/quran_details/data/model/surah_model.dart';
import 'package:islamic_app/features/quran/quran_details/data/repos/quran_details_repo.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view_model/quran_details_navigator.dart';

import '../../../quran_tap/data/model/Data.dart';


class QuranDetailsViewModel extends BaseViewModel<QuranDetailsNavigator>{
  QuranDetailsViewModel(this.quranDetailsRepo);
  QuranDetailsRepo quranDetailsRepo;
  bool? isFirstPageViewBuilder;
  int lastPage = -1;
  int? startPage;
  int countTheAyahs = 0;
  var pageController = PageController();
  final audioPlayer = AudioPlayer();
  late InformationAboutTheSurahModel informationAboutTheSurahModel;
  SurahModel surahModel = SurahModel();
  List<AyahModel> pageVerses = [];
  bool isTheSoundPlay = false;
  Future<void> fetchVersesOfTheSurah(int surahNumber)async{
    var result = await quranDetailsRepo.fetchVersesOfTheSurah(surahNumber);
    result.fold((failure) {
    }, (surah) {
      surahModel = surah;
      notifyListeners();
    },);
  }

  void filterTheSurahByPage({required int page, required int surahNumber}){
    setValueInCountTheAyahs(surahNumber,page);
    if(page > lastPage){
      casePageViewIsNext(page);
    }else{
      casePageViewIsPrevious(page);
    }
    lastPage = page;
    notifyListeners();
  }

  void setValueInCountTheAyahs(int surahNumber,int page) {
    //delete basmallah from Al-Faatiha surah
    if(surahNumber == 1){
      countTheAyahs = 1;
    }else if(page > (lastPage + 2)){
      while(surahModel.ayahs?[countTheAyahs].pageInSurah?.toInt() != page){
        countTheAyahs++;
      }
    }else if(lastPage == -1){
      countTheAyahs = 0;
    }
  }

  void casePageViewIsPrevious(int page) {
    countTheAyahs -= (pageVerses.length + 1);
    pageVerses.clear();
    while(surahModel.ayahs?[countTheAyahs].pageInSurah?.toInt() == page){
      countTheAyahs--;
      if(countTheAyahs == 0)break;
    }
    if(countTheAyahs != 0)countTheAyahs += 1;
    while(surahModel.ayahs?[countTheAyahs].pageInSurah?.toInt() == page){
      pageVerses.add(surahModel.ayahs![countTheAyahs]);
      countTheAyahs++;
      if(countTheAyahs == surahModel.ayahs?.length)break;
    }
  }

  void casePageViewIsNext(int page) {
     pageVerses.clear();
    while(surahModel.ayahs?[countTheAyahs].pageInSurah?.toInt() == page){
      pageVerses.add(surahModel.ayahs![countTheAyahs]);
      countTheAyahs++;
      if(countTheAyahs == surahModel.ayahs?.length)break;
    }
  }


  Future<void>soundTheAya(String url)async {
    if (!isTheSoundPlay) {
      await playSoundTheAya(url);
    }else{
      await pauseSoundTheAya();
    }
    isTheSoundPlay = !isTheSoundPlay;
  }
  Future<void> playSoundTheAya(String url)async{
    await audioPlayer.play(UrlSource(url));
  }
  Future<void> pauseSoundTheAya()async{
    await audioPlayer.pause();
  }
  Future<void>saveBookMark({required int page,required int surahNumber})async{
    await CacheMarkQuran.saveMarkQuran(page:page, surahNumber:surahNumber);
    notifyListeners();
  }
  Map<String, dynamic>? getBookMark(){
     return CacheMarkQuran.getBookMarkQuran();
  }
}