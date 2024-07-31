import 'package:flutter/material.dart';
import 'package:islamic_app/features/home_layout/models/bottom_navigation_item_model.dart';
import 'package:islamic_app/features/home_layout/presentation/view/widgets/custom_bottom_navigation_bar_item.dart';

List<BottomNavigationBarItem> listBottomNavigationItem(List<String> tapsName, BuildContext context) {
  return [
    customBottomNavigationBar(bottomNavigationItemModel: BottomNavigationItemModel(bottomNavigationItemImage: "assets/images/home layout/icons BottomNavigationBar/quran.png",bottomNavigationItemName: tapsName[0]),context:context),
    customBottomNavigationBar(bottomNavigationItemModel: BottomNavigationItemModel(bottomNavigationItemImage: "assets/images/home layout/icons BottomNavigationBar/hadeth.png",bottomNavigationItemName: tapsName[1]),context:context),
    customBottomNavigationBar(bottomNavigationItemModel: BottomNavigationItemModel(bottomNavigationItemImage: "assets/images/home layout/icons BottomNavigationBar/radio.png",bottomNavigationItemName: tapsName[2]),context:context),
    customBottomNavigationBar(bottomNavigationItemModel: BottomNavigationItemModel(bottomNavigationItemImage: "assets/images/home layout/icons BottomNavigationBar/sebha.png",bottomNavigationItemName: tapsName[3]),context:context),
    BottomNavigationBarItem(backgroundColor: const Color(0xffB7935F),label: tapsName[4],icon: const Icon(Icons.settings)),
  ];
}