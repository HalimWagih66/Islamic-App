import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../provider/settings_provider.dart';
import 'custom_background_container.dart';
import 'custom_elevated_button_for_bottom_sheet.dart';
class CustomBottomSheetForLanguage extends StatelessWidget {
  const CustomBottomSheetForLanguage({super.key});
  @override
  Widget build(BuildContext context) {
    var settingsProvider =  Provider.of<SettingsProvider>(context);
    return CustomBackgroundContainerForBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomElevatedButtonForBottomSheet(
            child: firstChild,
            onPressed: ()async{
               await settingsProvider.changeLanguageApp("en");
            },
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          CustomElevatedButtonForBottomSheet(
            child: secondChild,
            onPressed: ()async{
              await settingsProvider.changeLanguageApp("ar");
            },
          ),
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
    return provider.isLanguageEnglish() ? getSelectedWidget("English", context): getUnSelectedWidget("English", context);
  }
  Widget secondChild(BuildContext context){
    var provider = Provider.of<SettingsProvider>(context,listen: false);
    return provider.isLanguageEnglish() ? getUnSelectedWidget("العربيه", context) : getSelectedWidget("العربيه", context);
  }
}
