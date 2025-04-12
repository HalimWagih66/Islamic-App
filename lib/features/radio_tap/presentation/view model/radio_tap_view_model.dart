import 'package:audioplayers/audioplayers.dart';
import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/core/utils/services/api/api_endpoints.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_radio_app.dart';
import 'package:islamic_app/features/radio_tap/data/repos/radio_tap_repo.dart';
import 'package:islamic_app/features/radio_tap/presentation/view%20model/radio_tap_navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/model.radio/radio.dart';


  class RadioTapViewModel extends BaseViewModel<RadioTapNavigator> {
  late int selectedTapNumber;
  final radioPlayer = AudioPlayer();
  String errorMessage = "";
  int selectedRadioStation = 0;
  late bool isPlay = false;
  late RadioTapRepo radioTapRepo;
  List<RadioModel> radioSounds = [];

  RadioTapViewModel(RadioTapRepo radioTapRep){
    initializeRadioTapRapo(radioTapRep);
    initializeSelectedRadioStation();
  }

  void initializeRadioTapRapo(RadioTapRepo radioTapRep) {
    radioTapRepo = radioTapRep;
  }
  initializeSelectedRadioStation()async{
    CacheRadioApp.cacheRadioApp = await SharedPreferences.getInstance();
    selectedRadioStation = CacheRadioApp.getNumberRadioStation()??0;
  }
  void fetchRadioSounds(String language)async{
    var result = await radioTapRepo.fetchRadioSounds(endPoint: ApiEndPoints.soundsRadio,queryParameters: {"language":language});
    result.fold((failure) {
      errorMessage = failure.errorMessage;
    }, (items) {
      radioSounds = items;
    },);
    notifyListeners();
  }
  void changeTapNumber(int tapNumber) async {
    if (tapNumber != 3 && isPlay) {
      await radioPlayer.pause();
      isPlay = false;
      notifyListeners();
    }
  }

  Future<void> onClickPlayRadio(String url) async {
    isPlay = true;
    await radioPlayer.play(UrlSource(url));
    notifyListeners();
  }

  Future<void> onClickPauseRadio() async {
    isPlay = false;
    await radioPlayer.pause();
    notifyListeners();
  }
  Future<void> saveSelectedRadioStation(int value) async {
    selectedRadioStation = value;
    await CacheRadioApp.saveNumberRadioStation(value);
  }

  Future<void> onPressedFormerRadioStation(String radioUrl) async {
    if (selectedRadioStation == 0) return;
    if (isPlay) {
      await CacheRadioApp.saveNumberRadioStation(selectedRadioStation--);
      await radioPlayer.stop();
      await onClickPlayRadio(radioUrl);
    } else {
      await CacheRadioApp.saveNumberRadioStation(selectedRadioStation--);
    }
    notifyListeners();
  }
  Future<void> onPressedNextRadioStation(String radioUrl) async {
    if (isPlay) {
      await CacheRadioApp.saveNumberRadioStation(selectedRadioStation++);
      await radioPlayer.stop();
      await onClickPlayRadio(radioUrl);
    } else {
      await CacheRadioApp.saveNumberRadioStation(selectedRadioStation++);
    }
    notifyListeners();
  }

  Future<void> onPressedPlayAndPauseRadioStation(String radioUrl) async {
    if (isPlay) {
      await onClickPauseRadio();
    } else {
      await onClickPlayRadio(radioUrl);
    }
    notifyListeners();
  }

}