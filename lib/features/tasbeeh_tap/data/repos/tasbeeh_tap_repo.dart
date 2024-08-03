import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';

abstract class TasbeehTapRepo{
  Future<Either<Failure,List<String>>> fetchAzkarTitles();
}