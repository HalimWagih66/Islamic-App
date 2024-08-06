import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_state.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view/widget/azkar_tap_body.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view_model/azkar_tap_navigator.dart';
import 'package:provider/provider.dart';

import '../view_model/azkar_tap_view_model.dart';

class AzkarTapView extends StatefulWidget {
  const AzkarTapView({super.key});

  @override
  State<AzkarTapView> createState() => _AzkarTapViewState();
}

class _AzkarTapViewState extends BaseState<AzkarTapView,AzkarTapViewModel> implements AzkarTapNavigator{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: const Center(child: AzkarTapBody()),
    );
  }

  @override
  AzkarTapViewModel initializeViewModel() {
    return AzkarTapViewModel();
  }
}