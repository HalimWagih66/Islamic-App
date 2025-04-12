import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';
import '../model/azkar_model.dart';

abstract class AzkarDetailsRepo{
  Future<Either<Failure,List<ZakrModel>>>fetchTheAzkar(String category);
}