import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view/widgets/display_counter_tasbeeh_and_content_tasbeeh.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_navigator.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/base/base_state.dart';
import '../../../../my_application.dart';
import '../../../azkar/azkar_tap/presentation/view/widget/display_body_image.dart';
import '../../../azkar/azkar_tap/presentation/view/widget/display_head_image.dart';
import '../../data/repos/tasbeeh_tap_repo_local.dart';
import '../view_model/tasbeeh_tap_view_model.dart';

class TasbeehTapView extends StatefulWidget {
  const TasbeehTapView({super.key});

  @override
  State<TasbeehTapView> createState() => _TasbeehTapViewState();
}

class _TasbeehTapViewState extends BaseState<TasbeehTapView,TasbeehTapViewModel> implements TasbeehTapNavigator{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DisplayHeadImage(),
            const DisplayBodyImage(),
            SizedBox(height: 70.h),
            Text(AppLocalizations.of(context)!.number_of_verses,style: themeApp.font25SecondPrimarySemiBoldElMessiri,),
            SizedBox(height: 26.h),
            const DisplayCounterTasbeehAndContentTasbeeh(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      )
    );
  }
  @override
  TasbeehTapViewModel initializeViewModel() {
    return TasbeehTapViewModel(TasbeehTapRepoLocal());
  }
  @override
  void navigatePop() {
    GoRouter.of(context).pop();
  }
}

