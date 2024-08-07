import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/model/azkar_model.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/repos/azkar_details_repo.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view_model/azkar_details_navigator.dart';

class AzkarDetailsViewModel extends BaseViewModel<AzkarDetailsNavigator> {
  AzkarDetailsRepo azkarDetailsRepo;
  AzkarDetailsViewModel(this.azkarDetailsRepo);
  late String categoryName;
  List<ZakrModel> itemsOfZakrModel = [];
  Future<void>fetchDetailsTheZakr()async{
    var result = await azkarDetailsRepo.fetchTheAzkar(categoryName);
    result.fold((failure) {

    }, (items) {
      itemsOfZakrModel = items;
    },);
    notifyListeners();
  }
}