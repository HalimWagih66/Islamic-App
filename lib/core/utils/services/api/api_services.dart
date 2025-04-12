import 'package:dio/dio.dart';

class ApiServices{
  static const baseUrlAlquranCloud = "https://api.alquran.cloud/v1/";
  static const baseUrMp3quran = "https://mp3quran.net/api/v3/";
  Dio dio = Dio();
  Future<Map<String,dynamic>>getFromAlquranCloud({required String endpoint,re})async{
    var response = await dio.get("$baseUrlAlquranCloud$endpoint");
    print("url = $baseUrlAlquranCloud$endpoint");
    print(response.data);
    return response.data;
  }
  Future<Map<String,dynamic>>getFromMp3quran({required String endpoint,required Map<String,String> queryParameters})async{
    var response = await dio.get("$baseUrMp3quran$endpoint",queryParameters: queryParameters);
    print("url = $baseUrMp3quran$endpoint");
    print(response.data);
    return response.data;
  }

}