import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/model/azkar_model.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view_model/azkar_details_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../../my_application.dart';
import 'custom_background_container_for_widgets_azkar_details.dart';
import 'custom_icon_button.dart';

class DisplayHeaderTheZakrDetails extends StatelessWidget {
  const DisplayHeaderTheZakrDetails({
    super.key,
    required this.zakrModel,
  });

  final ZakrModel zakrModel;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainerForWidgetsAzkarDetails(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "❁",
              style: themeApp.font25SecondPrimarySemiBoldElMessiri,
            ),
            CustomIconButton(
              iconData: Icons.share,
              onPressed: () async {
                await Provider.of<AzkarDetailsViewModel>(context,listen: false).shareTheZakr(zakrModel);
              },
            ),
            CustomIconButton(
              iconData: Icons.copy,
              onPressed: () async {
                await Provider.of<AzkarDetailsViewModel>(context,listen: false).copyTheZakr(zakrModel);
              },
            ),
            Row(
              children: [
                Text(zakrModel.count!,
                    style: themeApp.font12SecondPrimaryRegularInter),
                const SizedBox(width: 4),
                Icon(
                  Icons.repeat,
                  color: themeApp.secondPrimaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
