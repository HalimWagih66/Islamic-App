import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_view_model.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view/tasbeeh_tap_view.dart';
import '../../../quran/quran_tap/presentation/view/quran_tap/view/quran_tap.dart';
import '../../models/bottom_navigation_item_model.dart';
import 'home_layout_navigator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeLayoutViewModel extends BaseViewModel<HomeLayoutNavigator>{
  List<BottomNavigationItemModel> bottomNavigationItemModels = [];
  int selectedItem = 0;
  List<Widget> taps = [
    const QuranTap(),
    Container(
      color: Colors.transparent,
    ),
    Container(
      color: Colors.transparent,
    ),
    const AzkarTapView(),
    Container(
      color: Colors.transparent,
    ),
  ];
  void changeTap(int index){
    selectedItem = index;
    notifyListeners();
  }
  List<String> listOfTapsName(BuildContext context){
    return [
      AppLocalizations.of(context)!.quran,
      AppLocalizations.of(context)!.hadith,
      AppLocalizations.of(context)!.radio,
      AppLocalizations.of(context)!.azkar,
      AppLocalizations.of(context)!.settings
    ];
  }
}
