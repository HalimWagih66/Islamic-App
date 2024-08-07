import 'package:audioplayers/audioplayers.dart';
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
  bool isFirstPageViewBuilder = true;
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
    //delete basmallah from Al-Faatiha surah
    pageVerses.clear();
    int index = surahNumber == 1 ? 1 : 0;
    for(;index < surahModel.ayahs!.length;index++){
      if(surahModel.ayahs?[index].pageInSurah == page){
        pageVerses.add(surahModel.ayahs![index]);
      }
    }
    notifyListeners();
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
    await CacheMarkQuran.saveMarkQuran(page, surahNumber);
    notifyListeners();
  }
  Map<String, dynamic>? getBookMark(){
     return CacheMarkQuran.getMarkQuran();
  }
}