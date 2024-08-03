import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/features/tasbeeh_tap/data/repos/tasbeeh_tap_repo.dart';
import 'package:islamic_app/features/tasbeeh_tap/data/repos/tasbeeh_tap_repo_impl_local.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_navigator.dart';

class TasbeehTapViewModel extends BaseViewModel<TasbeehTapNavigator> {
  TasbeehTapRepo tasbeehTapRepo = TasbeehTapRepoImplLocal();
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


