
import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view/widgets/custom_background_container_for_widgets_azkar_details.dart';
import 'package:provider/provider.dart';
import '../../../../../../provider/settings_provider.dart';

class DisplayContentTheZakr extends StatelessWidget {
  const DisplayContentTheZakr({
    super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return CustomBackgroundContainerForWidgetsAzkarDetails(
      child: Text(description,style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri.copyWith(fontSize: 24,height: 1.8),textAlign: TextAlign.center,),
    );
  }
}
