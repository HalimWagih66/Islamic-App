import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/widgets/custom_circular_progress_indicator.dart';
import 'package:islamic_app/features/radio_tap/presentation/view%20model/radio_tap_view_model.dart';
import 'package:islamic_app/features/radio_tap/presentation/view/widget/radio_item.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../my_application.dart';

class RadioControlDisplay extends StatefulWidget {
  const RadioControlDisplay({super.key});

  @override
  State<RadioControlDisplay> createState() => _RadioControlDisplayState();
}

class _RadioControlDisplayState extends State<RadioControlDisplay> {
  @override
  void initState() {
    super.initState();
    fetchSoundsRadio();
  }

  @override
  Widget build(BuildContext context) {
    var radioTapViewModel = Provider.of<RadioTapViewModel>(context);
    if(radioTapViewModel.errorMessage.isEmpty && radioTapViewModel.radioSounds.isEmpty){
      return const CustomCircularProgressIndicator();
    }else if(radioTapViewModel.errorMessage.isNotEmpty){
      return Center(child: Text(radioTapViewModel.errorMessage,style: themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.center,));
    }else{
      return const RadioItem();
    }
  }
  void fetchSoundsRadio() {
    String languageCode = Provider.of<SettingsProvider>(context,listen: false).languageCode == "en"?"eng":"ar";
    Provider.of<RadioTapViewModel>(context,listen: false).fetchRadioSounds(languageCode);
  }
}
