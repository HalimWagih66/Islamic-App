import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/theme/constant_color.dart';
import 'package:islamic_app/features/home_layout/models/bottom_navigation_item_model.dart';
import 'package:islamic_app/features/home_layout/presentation/view/widgets/custom_bottom_navigation_bar_item.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

List<BottomNavigationBarItem> listBottomNavigationItem({required List<String> tapsName,required BuildContext context,required Color color,required int selectedItem}) {
  return [
    customBottomNavigationBar(bottomNavigationItemModel: BottomNavigationItemModel(bottomNavigationItemImage: "assets/images/home layout/icons BottomNavigationBar/quran.png",bottomNavigationItemName: tapsName[0], iconColor: getColorSelectedItem(isSelectedItem: selectedItem == 0, context: context)),context:context,backgroundColor: color),
    customBottomNavigationBar(bottomNavigationItemModel: BottomNavigationItemModel(bottomNavigationItemImage: "assets/images/home layout/icons BottomNavigationBar/hadeth.png",bottomNavigationItemName: tapsName[1], iconColor: getColorSelectedItem(isSelectedItem: selectedItem == 1, context: context)),context:context,backgroundColor: color),
    customBottomNavigationBar(bottomNavigationItemModel: BottomNavigationItemModel(bottomNavigationItemImage: "assets/images/home layout/icons BottomNavigationBar/radio.png",bottomNavigationItemName: tapsName[2], iconColor: getColorSelectedItem(isSelectedItem: selectedItem == 2, context: context)),context:context,backgroundColor: color),
    customBottomNavigationBar(bottomNavigationItemModel: BottomNavigationItemModel(bottomNavigationItemImage: "assets/images/home layout/icons BottomNavigationBar/sebha.png",bottomNavigationItemName: tapsName[3], iconColor: getColorSelectedItem(isSelectedItem: selectedItem == 3, context: context)),context:context,backgroundColor: color),
    BottomNavigationBarItem(backgroundColor: color,label: tapsName[4],icon: Icon(Icons.settings,color: getColorSelectedItem(context: context,isSelectedItem: 4 == selectedItem))),
  ];
}
Color getColorSelectedItem({required bool isSelectedItem, required BuildContext context}){
  var settingsProvider =  Provider.of<SettingsProvider>(context,listen: false);
  if(isSelectedItem){
    return settingsProvider.isDarkEnabled() == true?primaryDarkColor:secondPrimaryLightColor;
  }else{
    return const Color(0xffffffff);
  }
}