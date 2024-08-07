import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/utils/services/json/read_from_json.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/model/azkar_model.dart';

import 'azkar_details_repo.dart';

class AzkarDetailsRepoLocal implements AzkarDetailsRepo{
  @override
  Future<Either<Failure, List<ZakrModel>>> fetchTheAzkar(String category) async{
    var result = await ReadFromJson.loadData("assets/files/azkar.json");
    List<ZakrModel> items = [];
    for(int i = 0 ; i < result['data'].length;i++){
      if(result['data'][i]['category'] == category){
        items.add(ZakrModel.fromJson(result['data'][i]));
      }
    }
    return right(items);
  }

}