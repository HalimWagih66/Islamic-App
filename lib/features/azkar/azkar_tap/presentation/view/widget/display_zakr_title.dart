import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/theme/constant_color.dart';
import 'package:provider/provider.dart';
import '../../../../../../my_application.dart';
import '../../../../../../provider/settings_provider.dart';

class DisplayZakrTitle extends StatelessWidget {
  const DisplayZakrTitle({super.key,required this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: settingsProvider.isDarkEnabled()?themeApp.thirdPrimaryColor:themeApp.primaryColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0),
                    child: Align(alignment: Alignment.centerRight,child: Text(title,style:themeApp.font25SecondPrimarySemiBoldElMessiri.copyWith(color: thirdLightColor),textAlign: TextAlign.right,))
                ),
              ),
              Text("❁",style: themeApp.font25ThirdColorRegularInter.copyWith(color: thirdLightColor),),
            ],
          ),
        ),
      ),
    );
  }
}
