import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/features/azkar/azkar_tap/data/repos/azkar_tap_repo_impl_local.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view_model/azkar_tap_navigator.dart';

import '../../data/repos/azkar_tap_repo.dart';

class AzkarTapViewModel extends BaseViewModel<AzkarTapNavigator> {
  AzkarTapRepo tasbeehTapRepo = AzkarTapRepoImplLocal();
  List<String> azkarTitles = [];
  Future<void>fetchAzkarTitle() async{
    var result = await tasbeehTapRepo.fetchAzkarTitles();
    result.fold((failure) {

    }, (items) {
      azkarTitles = items;
      notifyListeners();
    },);
  }
}


