import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/features/radio_tap/data/model.radio/radio.dart';

abstract class RadioTapRepo{
  Future<Either<Failure,List<RadioModel>>> fetchRadioSounds({required String endPoint, required Map<String,String> queryParameters});
}