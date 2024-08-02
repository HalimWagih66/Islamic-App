
import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/features/quran/quran_tap/data/repos/quran_tap_repo.dart';
import 'package:islamic_app/features/quran/quran_tap/presentation/view_model/quran_navigator.dart';

import '../../data/model/Data.dart';
class QuranTapViewModel extends BaseViewModel<QuranTapNavigator>{
  QuranTapViewModel(this.quranTapRepo);
  final QuranTapRepo quranTapRepo;
  String? errorMessage;
  List<InformationAboutTheSurahModel>? itemsInformationAboutTheSurahModel;
  Future<void>fetchInformationAboutTheSurah() async {
    var result = await quranTapRepo.fetchInformationAboutTheSurah();
    result.fold((failure) {
      errorMessage = failure.errorMessage;
      notifyListeners();
    }, (info) {
      itemsInformationAboutTheSurahModel = info;
      notifyListeners();
    });
  }
}