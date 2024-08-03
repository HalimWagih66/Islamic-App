import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view_model/azkar_tap_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/utils/widgets/custom_circular_progress_indicator.dart';

class DisplayListAzkarTitle extends StatefulWidget {
  const DisplayListAzkarTitle({super.key});

  @override
  State<DisplayListAzkarTitle> createState() => _DisplayListAzkarTitleState();
}

class _DisplayListAzkarTitleState extends State<DisplayListAzkarTitle> {
  @override
  void initState() {
    super.initState();
    Provider.of<AzkarTapViewModel>(context,listen: false).fetchAzkarTitle();
  }
  @override
  Widget build(BuildContext context) {
    AzkarTapViewModel tasbeehTapViewModel = Provider.of<AzkarTapViewModel>(context);
    if(tasbeehTapViewModel.azkarTitles.isEmpty){
      return const SliverFillRemaining(child: CustomCircularProgressIndicator());
    }else{
      return SliverList.builder(itemCount: tasbeehTapViewModel.azkarTitles.length,itemBuilder: (context, index) => DisplayZakrTitle(onPressed: () {},title: tasbeehTapViewModel.azkarTitles[index],),);
    }
  }
}
