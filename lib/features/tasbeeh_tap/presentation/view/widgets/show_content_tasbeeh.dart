import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/widgets/custom_circular_progress_indicator.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';
import 'package:provider/provider.dart';

import 'custom_elevated_button_for_tasbeeh.dart';


class ShowContentTasbeeh extends StatelessWidget {
  const ShowContentTasbeeh({super.key});

  @override
  Widget build(BuildContext context) {
    TasbeehTapViewModel tasbeehTapViewModel = Provider.of<TasbeehTapViewModel>(context);
    if(tasbeehTapViewModel.contentTasbeeh.isEmpty && tasbeehTapViewModel.rewardTasbeeh.isEmpty){
      return const CustomCircularProgressIndicator();
    }else{
      return const CustomElevatedButtonForTasbeeh();
    }
  }
}
