import 'package:flutter/services.dart';
import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/model/azkar_model.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/repos/azkar_details_repo.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view_model/azkar_details_navigator.dart';
import 'package:share_plus/share_plus.dart';

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
  Future<void> copyTheZakr(ZakrModel zakrModel) async {
    final value = ClipboardData(
      text: " اذكار : ${zakrModel.category!}\n"
          " الذكر : ${zakrModel.zekr} \n "
          " المرجع : ${zakrModel.reference}",
    );
    await Clipboard.setData(value);
    await navigator?.displayToast("The zakr has been copied.");
  }

  Future<void> shareTheZakr(ZakrModel zakrModel) async {
    await Share.share(
        " اذكار : ${zakrModel.category!}\n"
            " الذكر : ${zakrModel.zekr} \n "
            " المرجع : ${zakrModel.reference}",
        subject: zakrModel.category);
  }
}