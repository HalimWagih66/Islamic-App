import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view/widgets/show_bottom_sheet_tasbeeh.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'custom_vertical_divider.dart';

class CustomElevatedButtonForTasbeeh extends StatelessWidget {
  const CustomElevatedButtonForTasbeeh({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    TasbeehTapViewModel tasbeehTapViewModel = Provider.of<TasbeehTapViewModel>(
        context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: settingsProvider.themeApp.primaryColor,
        ),

        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  onPressed: tasbeehTapViewModel.onTapPressNextContentTasbeeh,
                onLongPress: tasbeehTapViewModel.onLongPressNextContentTasbeeh,
                  child: Icon(FontAwesomeIcons.angleRight,color: settingsProvider.themeApp.thirdPrimaryColor),
                ),
              ),
              const CustomVerticalDividerForContentTasbeeh(),
              Expanded(
                flex: 6,
                child: CustomElevatedButton(
                  onLongPress: () async{
                    await showBottomSheet(context);
                  },
                onPressed: tasbeehTapViewModel.onTapClickButtonCounterTasbeeh,
                  child: Text(tasbeehTapViewModel.contentTasbeeh[tasbeehTapViewModel.selectedContentTasbeeh],style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri.copyWith(color: settingsProvider.themeApp.thirdPrimaryColor,),textAlign: TextAlign.center,),
                ),
              ),
              const CustomVerticalDividerForContentTasbeeh(),
              Expanded(
                child: CustomElevatedButton(
                  onPressed: tasbeehTapViewModel.onPressedBackContentTasbeeh,
                  onLongPress: tasbeehTapViewModel.onLongBackContentTasbeeh,
                  child: Icon(FontAwesomeIcons.angleLeft,color: settingsProvider.themeApp.thirdPrimaryColor,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> showBottomSheet(BuildContext context)async{
    TasbeehTapViewModel tasbeehTapViewModel = Provider.of<TasbeehTapViewModel>(context,listen: false);
    await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => ShowBottomSheetTasbeeh(tasbeehTapViewModel: tasbeehTapViewModel),
    );
  }
}
