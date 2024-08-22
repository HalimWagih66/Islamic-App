import 'package:flutter/material.dart';
import 'package:islamic_app/features/settings_tap/view/widget/custom_background_container.dart';
import 'package:provider/provider.dart';
import '../../../../../provider/settings_provider.dart';
import '../../../../my_application.dart';
import 'button_style_bottom_sheet.dart';
class CustomBottomSheetForTheme extends StatelessWidget {
  const CustomBottomSheetForTheme({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider =  Provider.of<SettingsProvider>(context);
    return CustomBackgroundContainerForBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            style: buttonStyleBottomSheet(alignmentGeometry: settingsProvider.isLanguageEnglish()?Alignment.centerLeft:Alignment.centerRight,context:context,backgroundColor: settingsProvider.isDarkEnabled() ? const Color(0x64414d7c) : const Color(0x51eacc92)),
              onPressed: () async{
                await settingsProvider.changeThemeMode(ThemeMode.light);
              },
              child: firstChild(context),
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          ElevatedButton(
            style: buttonStyleBottomSheet(alignmentGeometry: settingsProvider.isLanguageEnglish()?Alignment.centerLeft:Alignment.centerRight,context:context,backgroundColor: settingsProvider.isDarkEnabled() ? const Color(0x64414d7c) : const Color(0x51eacc92)),
              onPressed: () async{
                await settingsProvider.changeThemeMode(ThemeMode.dark);
              },
              child: secondChild(context),
          )
        ],
      ),
    );
  }

  Widget getSelectedWidget(String title, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: themeApp.font25SecondPrimarySemiBoldElMessiri),
        Icon(Icons.check, color: themeApp.primaryColor),
      ],
    );
  }

  Widget getUnSelectedWidget(String title, BuildContext context) {
    return Text(title, style: themeApp.font25SecondPrimarySemiBoldElMessiri);
  }
  Widget firstChild(BuildContext context){
    var provider = Provider.of<SettingsProvider>(context,listen: false);
    return provider.isDarkEnabled() ? getUnSelectedWidget("Light", context) : getSelectedWidget("Light", context);
  }
  Widget secondChild(BuildContext context){
    var provider = Provider.of<SettingsProvider>(context,listen: false);
    return provider.isDarkEnabled() ? getSelectedWidget("Dark", context) : getUnSelectedWidget("Dark", context);
  }
}
