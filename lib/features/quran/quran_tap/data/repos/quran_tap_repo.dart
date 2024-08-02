import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';

import '../model/Data.dart';

abstract class QuranTapRepo{
  Future<Either<Failure, List<InformationAboutTheSurahModel>>>fetchInformationAboutTheSurah();
}