import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view/widgets/custom_background_container_for_widgets_azkar_details.dart';
import '../../../../../../my_application.dart';

class DisplayContentReferenceTheZakr extends StatelessWidget {
  const DisplayContentReferenceTheZakr({super.key, required this.reference});
  final String reference;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainerForWidgetsAzkarDetails(
        child: Text(reference,style:themeApp.font12SecondPrimaryRegularInter.copyWith(fontSize: 15),textAlign: TextAlign.center,)
    );
  }
}
