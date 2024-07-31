import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_navigator.dart';
import 'package:islamic_app/core/base/base_view_model.dart';
abstract class BaseState<T extends StatefulWidget,VM extends BaseViewModel> extends State<T> implements BaseNavigator{

  late VM viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = initializeViewModel();
    viewModel.navigator = this;
  }
  VM initializeViewModel();

}
