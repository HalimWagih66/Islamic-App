import 'package:flutter/material.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view/widgets/quran_details_body.dart';

class QuranDetailsView extends StatelessWidget {
   const QuranDetailsView({super.key, this.startPge = 0});
  static const routeName = "/QuranDetailsView";
  final int startPge;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Directionality(
         textDirection: TextDirection.rtl,
          child: QuranDetailsBody()),
    );
  }
}

