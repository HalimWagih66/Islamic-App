import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/model/azkar_model.dart';
import '../../../../azkar_tap/presentation/view/widget/display_zakr_description.dart';
import 'display_content_the_zakr.dart';
import 'display_header_description.dart';
import 'display_reference_content_the_tasbeeh.dart';

class DisplayZakrDetails extends StatelessWidget {
  const DisplayZakrDetails({
    super.key, required this.zakrModel,
  });
  final ZakrModel zakrModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DisplayHeaderDescription(zakrModel: zakrModel),
        const SizedBox(height: 10),
        DisplayContentTheZakr(description: zakrModel.zekr!),
        const SizedBox(height: 10),
         Align(alignment: Alignment.centerLeft,child: DisplayContentReferenceTheZakr(reference: zakrModel.reference!,)),
        const SizedBox(height: 10),
        DisplayZakrDescription(description: zakrModel.description!)
      ]
    );
  }
}
