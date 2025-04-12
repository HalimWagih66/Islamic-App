import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view/widgets/custom_background_container_for_widgets_azkar_details.dart';
import '../../../../../../my_application.dart';

class DisplayZakrDescription extends StatelessWidget {
  const DisplayZakrDescription({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainerForWidgetsAzkarDetails(
        child: Text(description,style: themeApp.font20SecondPrimaryRegularAmiri.copyWith(height: 1.6),textAlign: TextAlign.center,)
    );
  }
}
