import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view_model/azkar_details_view_model.dart';
import 'package:provider/provider.dart';

import 'display_zakr_details.dart';

class DisplayListOfTheAzkarDetails extends StatelessWidget {
  const DisplayListOfTheAzkarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var azkarDetailsViewModel = Provider.of<AzkarDetailsViewModel>(context);
    return ListView.builder(
      itemCount: azkarDetailsViewModel.itemsOfZakrModel.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: DisplayZakrDetails(zakrModel: azkarDetailsViewModel.itemsOfZakrModel[index]),
      ),
    );
  }
}
