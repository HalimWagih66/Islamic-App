import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../my_application.dart';

class DisplayTableHeader extends StatelessWidget {
  const DisplayTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          Divider(
            color: themeApp.primaryColor,
            thickness: 3.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.number_of_verses,style: themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.start,),
                Text(AppLocalizations.of(context)!.surah_name,style: themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.end,),
              ],
            ),
          ),
          Divider(
            color: themeApp.primaryColor,
            thickness: 3.h,
          ),
        ],
      ),
    );
  }
}
