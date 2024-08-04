import 'package:flutter/material.dart';
import 'package:islamic_app/features/home_layout/presentation/view_model/home_layout_view_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'custom_app_bar.dart';
import 'list_of_bottom_navigation_item.dart';

class HomeLayoutDetails extends StatelessWidget {
  const HomeLayoutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var homeLayoutViewModel = Provider.of<HomeLayoutViewModel>(context);
    var settingsProvider = Provider.of<SettingsProvider>(context);
    List<String> tapsName = homeLayoutViewModel.listOfTapsName(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsProvider.getMainBackground()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(title: tapsName[homeLayoutViewModel.selectedItem]),
        body: homeLayoutViewModel.taps[homeLayoutViewModel.selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: homeLayoutViewModel.selectedItem,
          onTap: (value) {
            homeLayoutViewModel.changeTap(value);
          },
          items: listBottomNavigationItem(tapsName: tapsName, context: context, color: settingsProvider.isDarkEnabled() ? settingsProvider.themeApp.thirdPrimaryColor : settingsProvider.themeApp.primaryColor, selectedItem: homeLayoutViewModel.selectedItem),
        ),
      ),
    );
  }
}
