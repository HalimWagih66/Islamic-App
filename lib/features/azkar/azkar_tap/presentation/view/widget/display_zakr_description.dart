import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view/widgets/custom_background_container_for_widgets_azkar_details.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class DisplayZakrDescription extends StatelessWidget {
  const DisplayZakrDescription({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return CustomBackgroundContainerForWidgetsAzkarDetails(
        child: Text(description,style: settingsProvider.themeApp.font20SecondPrimaryRegularAmiri.copyWith(height: 1.6),textAlign: TextAlign.center,)
    );
  }
}
