import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/home_layout/presentation/view_model/home_layout_view_model.dart';
import 'package:provider/provider.dart';

class DisplayTableHeader extends StatelessWidget {
  const DisplayTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    HomeLayoutViewModel homeLayoutViewModel = Provider.of<HomeLayoutViewModel>(context,listen: false);
    return Column(
      children: [
        Divider(
          color: homeLayoutViewModel.themeApp.primaryColor,
          thickness: 3.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.number_of_verses,style: homeLayoutViewModel.themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.start,),
              Text(AppLocalizations.of(context)!.surah_name,style: homeLayoutViewModel.themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.end,),
            ],
          ),
        ),
        Divider(
          color: homeLayoutViewModel.themeApp.primaryColor,
          thickness: 3.h,
        ),
      ],
    );
  }
}
