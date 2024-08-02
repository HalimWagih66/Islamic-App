import 'package:dio/dio.dart';

class ApiServices{
  static const baseUrl = "https://api.alquran.cloud/v1/";
  Dio dio = Dio();

  Future<Map<String,dynamic>>get({required String endpoint})async{
    var response = await dio.get("$baseUrl$endpoint");
    print("url = $baseUrl$endpoint");
    print(response.data);
    return response.data;
  }
}