import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_view_model.dart';
import '../../models/bottom_navigation_item_model.dart';
import 'home_layout_navigator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeLayoutViewModel extends BaseViewModel<HomeLayoutNavigator>{
  List<BottomNavigationItemModel> bottomNavigationItemModels = [];
  int selectedItem = 0;
  List<Widget> taps = [
    Container(
      color: Colors.transparent,
    ),
    Container(
      color: Colors.transparent,
    ),
    Container(
      color: Colors.transparent,
    ),
    Container(
      color: Colors.transparent,
    ),
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
      AppLocalizations.of(context)!.tasbeeh,
      AppLocalizations.of(context)!.settings
    ];
  }
}
