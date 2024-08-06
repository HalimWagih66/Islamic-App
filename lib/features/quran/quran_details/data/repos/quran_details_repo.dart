import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';
import '../model/surah_model.dart';

abstract class QuranDetailsRepo{
  Future<Either<Failure,SurahModel>>fetchVersesOfTheSurah(int surahNumber);
}