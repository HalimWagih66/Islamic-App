import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_navigator.dart';

class BaseViewModel<Nav extends BaseNavigator> extends ChangeNotifier{
  Nav? navigator;

}