import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/errors/server_failure.dart';
import 'package:islamic_app/core/utils/services/api/api_services.dart';
import 'package:islamic_app/features/radio_tap/data/model.radio/radio.dart';
import 'package:islamic_app/features/radio_tap/data/repos/radio_tap_repo.dart';
import '../model.radio/radio_response.dart';

class RadioTapRepoImplNetWork extends RadioTapRepo{
  ApiServices apiServices = ApiServices();
  @override
  Future<Either<Failure, List<RadioModel>>> fetchRadioSounds({required String endPoint, required Map<String,String> queryParameters}) async{
    try {
      var result = await apiServices.getFromMp3quran(endpoint: endPoint, queryParameters: queryParameters);
      RadioResponse radioResponse = RadioResponse.fromJson(result);
      return right(radioResponse.collectionRadio!);
    } on Exception catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(dioException: e));
      }else{
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}