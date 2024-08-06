import 'package:flutter/services.dart';

class ReadFileFromTxt{
  static Future<String>loadData(String file)async{
    String result =  await rootBundle.loadString(file);
    print("result $result");
    return result;
  }
}