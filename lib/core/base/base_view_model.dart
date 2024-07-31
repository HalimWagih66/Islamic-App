import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_navigator.dart';
import 'package:islamic_app/core/utils/theme/text_theme_light_app.dart';
import 'package:islamic_app/core/utils/theme/theme_app.dart';


class BaseViewModel<Nav extends BaseNavigator> extends ChangeNotifier{
  Nav? navigator;
  ThemeApp themeApp = TextThemeLightApp();

}