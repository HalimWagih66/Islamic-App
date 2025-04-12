import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/quran/quran_tap/data/repos/quran_tap_repo_impl_local.dart';
import 'package:islamic_app/features/quran/quran_tap/presentation/view/quran_tap/view/widgets/display_table_header.dart';
import 'package:islamic_app/features/quran/quran_tap/presentation/view/quran_tap/view/widgets/display_body_table.dart';
import 'package:provider/provider.dart';

import '../../../view_model/quran_tap_view_model.dart';
class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)  => QuranTapViewModel(QuranTapRepoImplLocal()),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 227.h,
                child: AspectRatio(aspectRatio: 205/227,
                child: Image.asset("assets/images/home layout/quran_tap/quran_header_icn.png"))),
          ),
          const SliverToBoxAdapter(child: DisplayTableHeader()),
          const DisplayBodyTable()
        ],
      ),
    );
  }
}