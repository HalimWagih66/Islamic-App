import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../my_application.dart';
import '../../view model/radio_tap_view_model.dart';

class RadioItem extends StatelessWidget {
   const RadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    var radioTapViewModel = Provider.of<RadioTapViewModel>(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          Text(radioTapViewModel.radioSounds[radioTapViewModel.selectedRadioStation].name??"",style: themeApp.font25SecondPrimarySemiBoldElMessiri,),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: ()async{
                if(radioTapViewModel.selectedRadioStation == radioTapViewModel.radioSounds.length)return;
                await radioTapViewModel.onPressedNextRadioStation(radioTapViewModel.radioSounds[radioTapViewModel.selectedRadioStation].radioUrl??"");

              }, icon: Icon(Icons.skip_previous,color: themeApp.primaryColor),iconSize: 39),
              IconButton(onPressed: ()async{

                  await radioTapViewModel.onPressedPlayAndPauseRadioStation(radioTapViewModel.radioSounds[radioTapViewModel.selectedRadioStation].radioUrl??"");

              }, icon: Icon(radioTapViewModel.isPlay? Icons.pause:Icons.play_arrow,color: themeApp.primaryColor),iconSize: 58),
              IconButton(onPressed: ()async{

                await radioTapViewModel.onPressedFormerRadioStation(radioTapViewModel.radioSounds[radioTapViewModel.selectedRadioStation].radioUrl??"");

              }, icon: Icon(Icons.skip_next,color: themeApp.primaryColor),iconSize: 39)
            ],
          )
        ],
      ),
    );
  }
}
