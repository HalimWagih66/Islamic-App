import 'package:islamic_app/core/base/base_navigator.dart';

abstract class AzkarDetailsNavigator implements BaseNavigator{
  Future<void> displayToast(String message);
}