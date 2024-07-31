import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/taps/presentation/view/widgets/display_surah_name_and_number_of_verses_in_the_surah.dart';
import 'package:islamic_app/features/taps/presentation/view/widgets/display_table_header.dart';
class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 227.h,
              child: AspectRatio(aspectRatio: 205/227,
              child: Image.asset("assets/images/home layout/quran_tap/quran_header_icn.png"))),
        ),
        const SliverToBoxAdapter(child: DisplayTableHeader()),
        SliverFillRemaining(
          child: ListView.builder(physics: const NeverScrollableScrollPhysics(),itemBuilder: (context, index) => const DisplaySurahNameAndNumberOfVersesInTheSurah())
        ),
      ],
    );
  }
}