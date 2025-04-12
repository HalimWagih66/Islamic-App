import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';

abstract class AzkarTapRepo{
  Future<Either<Failure,List<String>>> fetchAzkarTitles();
}