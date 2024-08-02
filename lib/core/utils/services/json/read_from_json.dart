import 'dart:convert';

import 'package:flutter/services.dart';

class ReadFromJson{
  Future<String>_loadAsset(String fileName)async{
    return await rootBundle.loadString(fileName);
  }
  Future<dynamic>loadData(String fileName)async {
    String jsonString = await _loadAsset(fileName);
    var parsedJson = jsonDecode(jsonString);
    return parsedJson;
  }
}