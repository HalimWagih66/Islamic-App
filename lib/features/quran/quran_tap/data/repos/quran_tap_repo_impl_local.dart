import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/utils/services/json/read_from_json.dart';
import 'package:islamic_app/features/quran/quran_tap/data/model/Data.dart';
import 'package:islamic_app/features/quran/quran_tap/data/repos/quran_tap_repo.dart';

class QuranTapRepoImplLocal implements QuranTapRepo{
  @override
  Future<Either<Failure, List<InformationAboutTheSurahModel>>> fetchInformationAboutTheSurah() async {
    var result = await ReadFromJson.loadData("assets/files/information_about_the_surahs.json");
    List<InformationAboutTheSurahModel> items = [];
    for(int i = 0 ; i < result.length; i++){
      items.add(InformationAboutTheSurahModel.fromJson(result[i]));
    }
    return right(items);
  }
}