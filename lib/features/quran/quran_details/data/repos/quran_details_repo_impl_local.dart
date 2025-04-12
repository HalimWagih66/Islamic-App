import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/utils/services/json/read_from_json.dart';
import 'package:islamic_app/features/quran/quran_details/data/repos/quran_details_repo.dart';
import '../model/surah_model.dart';

class QuranDetailsRepoImplLocal implements QuranDetailsRepo{
  @override
  Future<Either<Failure, SurahModel>> fetchVersesOfTheSurah(int surahNumber) async{
    var result = await ReadFromJson.loadData("assets/files/quran_data.json");
    SurahModel surahModel = SurahModel.fromJson(result['data']['surahs'][surahNumber]);
    return right(surahModel);
  }
}