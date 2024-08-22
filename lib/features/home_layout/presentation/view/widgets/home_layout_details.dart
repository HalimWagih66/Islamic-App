import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/widgets/custom_background_container_for_app.dart';
import 'package:islamic_app/features/home_layout/presentation/view_model/home_layout_view_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import '../../../../../my_application.dart';
import 'custom_app_bar.dart';
import 'list_of_bottom_navigation_item.dart';

class HomeLayoutDetails extends StatelessWidget {
  const HomeLayoutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var homeLayoutViewModel = Provider.of<HomeLayoutViewModel>(context);
    var settingsProvider = Provider.of<SettingsProvider>(context);
    List<String> tapsName = homeLayoutViewModel.listOfTapsName(context);
    return CustomBackgroundContainerForApp(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(title: tapsName[homeLayoutViewModel.selectedItem]),
        body: homeLayoutViewModel.taps[homeLayoutViewModel.selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: homeLayoutViewModel.selectedItem,
          onTap: (value) {
            homeLayoutViewModel.changeTap(value);
          },
          items: listBottomNavigationItem(tapsName: tapsName, context: context, color: settingsProvider.isDarkEnabled() ? themeApp.thirdPrimaryColor : themeApp.primaryColor, selectedItem: homeLayoutViewModel.selectedItem),
        ),
      ),
    );
  }
}
