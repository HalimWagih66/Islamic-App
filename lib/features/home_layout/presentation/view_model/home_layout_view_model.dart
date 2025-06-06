import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view/azkar_tap_view.dart';
import '../../../quran/quran_tap/presentation/view/quran_tap/view/quran_tap.dart';
import '../../../radio_tap/presentation/view/radio_tap.dart';
import '../../../settings_tap/view/settings_tap.dart';
import '../../../tasbeeh_tap/presentation/view/tasbeeh_tap_view.dart';
import '../../models/bottom_navigation_item_model.dart';
import 'home_layout_navigator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeLayoutViewModel extends BaseViewModel<HomeLayoutNavigator>{
  List<BottomNavigationItemModel> bottomNavigationItemModels = [];
  int selectedItem = 0;
  List<Widget> taps = [
    const QuranTap(),
    const AzkarTapView(),
    const RadioTap(),
    const TasbeehTapView(),
    const SettingsTap()
  ];
  void changeTap(int index){
    selectedItem = index;
    notifyListeners();
  }
  List<String> listOfTapsName(BuildContext context){
    return [
      AppLocalizations.of(context)!.quran,
      AppLocalizations.of(context)!.azkar,
      AppLocalizations.of(context)!.radio,
      AppLocalizations.of(context)!.tasbeeh,
      AppLocalizations.of(context)!.settings
    ];
  }
}
