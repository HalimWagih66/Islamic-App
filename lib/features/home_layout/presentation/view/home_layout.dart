import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_state.dart';
import 'package:islamic_app/features/home_layout/presentation/view/widgets/home_layout_details.dart';
import 'package:islamic_app/features/home_layout/presentation/view_model/home_layout_navigator.dart';
import 'package:islamic_app/features/home_layout/presentation/view_model/home_layout_view_model.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});
  static const routeName = "/";
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends BaseState<HomeLayout, HomeLayoutViewModel> implements HomeLayoutNavigator {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
        child: const HomeLayoutDetails());
  }
  @override
  HomeLayoutViewModel initializeViewModel() {
    return HomeLayoutViewModel();
  }
}