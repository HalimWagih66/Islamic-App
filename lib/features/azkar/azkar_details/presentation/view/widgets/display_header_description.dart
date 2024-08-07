import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/model/azkar_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../../core/utils/theme/constant_color.dart';
import 'custom_background_container_for_widgets_azkar_details.dart';
import 'custom_icon_button.dart';

class DisplayHeaderDescription extends StatelessWidget {
  const DisplayHeaderDescription({
    super.key, required this.zakrModel,
  });
  final ZakrModel zakrModel;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return CustomBackgroundContainerForWidgetsAzkarDetails(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("❁",style: settingsProvider.themeApp.font25ThirdColorRegularInter.copyWith(color: thirdLightColor),),
            CustomIconButton(iconData: Icons.share,onPressed: () async{
              await Share.share(zakrModel.zekr!,subject: zakrModel.category);
            },),
            CustomIconButton(iconData: Icons.copy,onPressed: () {},),
            Row(
              children: [
                Text(zakrModel.count!,style: settingsProvider.themeApp.font12SecondPrimaryRegularInter),
                const SizedBox(width: 4),
                Icon(Icons.repeat,color: settingsProvider.themeApp.secondPrimaryColor,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
