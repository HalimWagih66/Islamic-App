import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_state.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view/widget/tasbeeh_tap_body.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_navigator.dart';
import 'package:islamic_app/features/tasbeeh_tap/presentation/view_model/tasbeeh_tap_view_model.dart';
import 'package:provider/provider.dart';

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
      child: const Center(child: TasbeehTapBody()),
    );
  }

  @override
  TasbeehTapViewModel initializeViewModel() {
    return TasbeehTapViewModel();
  }
}