import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../provider/settings_provider.dart';
import 'button_style_bottom_sheet.dart';
class CustomBottomSheetForTheme extends StatelessWidget {
  const CustomBottomSheetForTheme({super.key, required this.textButtonTheFirst, required this.textButtonTheSecond, required this.background});
  final String textButtonTheFirst;
  final String textButtonTheSecond;
  final Color background;
  @override
  Widget build(BuildContext context) {
    var settingsProvider =  Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          color: settingsProvider.themeApp.thirdPrimaryColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
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
    var settingsProvider = Provider.of<SettingsProvider>(context,listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri),
        Icon(Icons.check, color: settingsProvider.themeApp.primaryColor),
      ],
    );
  }

  Widget getUnSelectedWidget(String title, BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context,listen: false);
    return Text(title, style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri);
  }
  Widget firstChild(BuildContext context){
    var provider = Provider.of<SettingsProvider>(context,listen: false);
    return provider.isDarkEnabled() ? getUnSelectedWidget(textButtonTheFirst, context) : getSelectedWidget(textButtonTheFirst, context);
  }
  Widget secondChild(BuildContext context){
    var provider = Provider.of<SettingsProvider>(context,listen: false);
    return provider.isDarkEnabled() ? getSelectedWidget(textButtonTheSecond, context) : getUnSelectedWidget(textButtonTheSecond, context);
  }
}
