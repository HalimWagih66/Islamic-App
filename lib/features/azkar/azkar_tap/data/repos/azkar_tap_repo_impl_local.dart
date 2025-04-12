import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/utils/services/json/read_from_json.dart';
import 'package:islamic_app/features/azkar/azkar_tap/data/repos/azkar_tap_repo.dart';

class AzkarTapRepoImplLocal implements AzkarTapRepo{
  @override
  Future<Either<Failure, List<String>>> fetchAzkarTitles() async{
    var result = await ReadFromJson.loadData("assets/files/azkar.json");
    List<String> items = [];
    items.add(result['data'][0]["category"]);
    for(int i = 0 ; i < result['data'].length-1;i++){
      if(items[items.length-1].compareTo(result['data'][i+1]["category"]) != 0){
        items.add(result['data'][i+1]["category"]);
      }
    }
    print("items = $items");
    return right(items);
  }
}