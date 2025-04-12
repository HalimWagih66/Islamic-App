import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_tasbeeh.dart';
import 'package:islamic_app/features/tasbeeh_tap/data/repos/tasbeeh_tap_repo.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_navigator.dart';

class TasbeehTapViewModel extends BaseViewModel<TasbeehTapNavigator>{
  TasbeehTapViewModel(TasbeehTapRepo repo){
    tasbeehTapRepo = repo;
  }
  late TasbeehTapRepo tasbeehTapRepo;
  List<String> contentTasbeeh = [];
  List<String> rewardTasbeeh = [];
  int counterTasbeeh = 0;
  int selectedContentTasbeeh = 0;
  double angle = 0;
  dynamic result;

  void getSelectedTasbeehFromCache(){
    if (CacheTasbeeh.getSelectedTasbeeh() == null) {
      selectedContentTasbeeh = 0;
      counterTasbeeh = 0;
    }else{
      Map<String, dynamic>? tasbeeh = CacheTasbeeh.getSelectedTasbeeh();
      selectedContentTasbeeh = tasbeeh?['selectedContentTasbeeh'];
      counterTasbeeh = tasbeeh?['counterTasbeeh'];
    }
    notifyListeners();
  }
  Future<void> readFile() async {
    result = await tasbeehTapRepo.fetchContentTheTasbeeh();
    result.fold((failure) {

    }, (lines) {
      for (int i = 0; i < lines.length; i += 2) {
        contentTasbeeh.add(lines[i]);
        rewardTasbeeh.add(lines[i + 1]);
      }
    },);
    notifyListeners();
  }

  Future<void> changeContentTheTasbeeh({required int contentTasbeehNumber}) async {
    selectedContentTasbeeh = contentTasbeehNumber;
    counterTasbeeh = 0;
    await CacheTasbeeh.saveSelectedTasbeeh(counterTasbeeh: 0,selectedContentTasbeeh: selectedContentTasbeeh);
    notifyListeners();
    navigator?.navigatePop();
  }
  Future<void> onTapClickButtonCounterTasbeeh() async {
    counterTasbeeh++;
    if (counterTasbeeh == 32) {
      selectedContentTasbeeh++;
      counterTasbeeh = 0;
    }
    await CacheTasbeeh.saveSelectedTasbeeh(counterTasbeeh: counterTasbeeh,selectedContentTasbeeh: selectedContentTasbeeh);
    angle += 25;
    notifyListeners();
  }
  Future<void>onTapPressNextContentTasbeeh()async{
    if (selectedContentTasbeeh < 16) {
      selectedContentTasbeeh++;
      counterTasbeeh = 0;
      await CacheTasbeeh.saveSelectedTasbeeh(selectedContentTasbeeh: selectedContentTasbeeh, counterTasbeeh: counterTasbeeh);
      notifyListeners();
    }
  }
  Future<void>onPressedBackContentTasbeeh()async{
    if (selectedContentTasbeeh >  0) {
      selectedContentTasbeeh--;
      counterTasbeeh = 0;
      await CacheTasbeeh.saveSelectedTasbeeh(selectedContentTasbeeh: selectedContentTasbeeh, counterTasbeeh: counterTasbeeh);
      notifyListeners();
    }
  }
  Future<void>onLongBackContentTasbeeh()async{
    selectedContentTasbeeh = 0;
    counterTasbeeh = 0;
    CacheTasbeeh.saveSelectedTasbeeh(selectedContentTasbeeh: selectedContentTasbeeh, counterTasbeeh: counterTasbeeh);
    notifyListeners();
  }
  Future<void>onLongPressNextContentTasbeeh()async{
    selectedContentTasbeeh = 16;
    counterTasbeeh = 0;
    await CacheTasbeeh.saveSelectedTasbeeh(selectedContentTasbeeh: selectedContentTasbeeh, counterTasbeeh: counterTasbeeh);
    notifyListeners();
  }
  Future<void> onLongPressClickButtonCounterTasbeeh()async{
    counterTasbeeh = 0;
    await CacheTasbeeh.saveSelectedTasbeeh(selectedContentTasbeeh: selectedContentTasbeeh, counterTasbeeh: counterTasbeeh);
    notifyListeners();
  }

// void showBottomSheetTasbeeh(BuildContext context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (context) => ShowBottomSheetTasbeh(
  //           contentTasbeeh: contentTasbeeh,
  //           rewardTasbeeh: rewardTasbeeh,
  //           callBack: changeSelectedContentTasbeh),
  //       isScrollControlled: true);
  // }
  //

  // Future<void>onLongPressContentTasbeh(BuildContext context)async{
  //   // await readFile();
  //   showBottomSheetTasbeeh(context);
  //   notifyListeners();
  // }

}