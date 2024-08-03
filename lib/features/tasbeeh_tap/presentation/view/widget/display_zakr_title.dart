import 'package:flutter/material.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';
import 'package:provider/provider.dart';

class DisplayZakrTitle extends StatelessWidget {
  const DisplayZakrTitle({super.key,required this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    TasbeehTapViewModel tasbeehTapViewModel = Provider.of<TasbeehTapViewModel>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: tasbeehTapViewModel.themeApp.primaryColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0),
                  child: Align(alignment: Alignment.centerRight,child: Text(title,style:tasbeehTapViewModel.themeApp.font25ThirdColorRegularInter))
              ),
            ),
            Text("❁",style: tasbeehTapViewModel.themeApp.font25ThirdColorRegularInter,),
          ],
        ),
      ),
    );
  }
}
