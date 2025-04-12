import 'package:flutter/material.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';


import '../../../../../my_application.dart';
class ShowBottomSheetTasbeeh extends StatelessWidget {
  const ShowBottomSheetTasbeeh({super.key, required this.tasbeehTapViewModel});
  final TasbeehTapViewModel tasbeehTapViewModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      color: themeApp.thirdPrimaryColor,
      child: ListView.builder(
        itemCount: tasbeehTapViewModel.contentTasbeeh.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            splashColor: Colors.transparent,
            onTap: () async{
              await tasbeehTapViewModel.changeContentTheTasbeeh(contentTasbeehNumber: index);
            },
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                textDirection: TextDirection.rtl,
                children: [
                  Text(tasbeehTapViewModel.contentTasbeeh[index],style: themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.center),
                  const SizedBox(height: 5),
                  Text(tasbeehTapViewModel.rewardTasbeeh[index],style: themeApp.font20SecondPrimaryRegularAmiri,textAlign: TextAlign.center),
                  const SizedBox(height: 7),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
