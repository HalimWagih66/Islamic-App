
import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view/widgets/custom_background_container_for_widgets_azkar_details.dart';
import '../../../../../../my_application.dart';

class DisplayContentTheZakr extends StatelessWidget {
  const DisplayContentTheZakr({
    super.key, required this.content});
  final String content;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainerForWidgetsAzkarDetails(
      child: Text(content,style: themeApp.font25SecondPrimarySemiBoldElMessiri.copyWith(fontSize: 24,height: 1.8,fontFamily: content[0] == "{"?"UthmanicHafs":"ElMessiri"),textAlign: TextAlign.center,),
    );
  }
}

