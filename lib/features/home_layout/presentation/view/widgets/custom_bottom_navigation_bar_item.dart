import 'package:flutter/material.dart';
import 'package:islamic_app/features/home_layout/models/bottom_navigation_item_model.dart';

BottomNavigationBarItem customBottomNavigationBar({required BottomNavigationItemModel bottomNavigationItemModel, required BuildContext context}){
  return BottomNavigationBarItem(backgroundColor: const Color(0xffB7935F),label: bottomNavigationItemModel.bottomNavigationItemName,icon: ImageIcon(AssetImage(bottomNavigationItemModel.bottomNavigationItemImage)));
}