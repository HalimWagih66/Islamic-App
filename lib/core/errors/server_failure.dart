import 'package:dio/dio.dart';
import 'package:islamic_app/core/errors/failure.dart';

class ServerFailure extends Failure{
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError({required DioException dioException}){
    switch(dioException.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "connection Timeout with Api Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "send Timeout with Api Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "receive Timeout with Api Server");
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: "bad Certificate with Api Server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!,dioException.response!.statusMessage!);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Request to ApiServer was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "");
      case DioExceptionType.unknown:
        // if(dioException.response!.statusMessage!.contains("SocketException")){
        //   return ServerFailure(errorMessage: "No Internet Connection");
        // }
        return ServerFailure(errorMessage: "Unexpected Error, Please try later");
      default:
        return ServerFailure(errorMessage: "Oops There was an error, Please Try again");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, String statusMessage){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(errorMessage: statusMessage);
    }else if(statusCode == 404){
      return ServerFailure(errorMessage: "Your request not found, Please try later!");
    }else if(statusCode == 500){
      return ServerFailure(errorMessage: "Internal Server Error, Please try later!");
    }else{
      return ServerFailure(errorMessage: "Oops There was an error, Please Try again");
    }
  }
}
