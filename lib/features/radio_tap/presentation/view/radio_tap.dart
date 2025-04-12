import 'package:flutter/material.dart';
import 'package:islamic_app/core/base/base_state.dart';
import 'package:islamic_app/features/radio_tap/data/repos/radio_tap_repo_impl.dart';
import 'package:islamic_app/features/radio_tap/presentation/view%20model/radio_tap_navigator.dart';
import 'package:islamic_app/features/radio_tap/presentation/view%20model/radio_tap_view_model.dart';
import 'package:islamic_app/features/radio_tap/presentation/view/widget/radio_control_display.dart';
import 'package:provider/provider.dart';


class RadioTap extends StatefulWidget {
  const RadioTap({super.key});

  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends BaseState<RadioTap,RadioTapViewModel> implements RadioTapNavigator{
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/home layout/radio_tap/radio.png"),
        const SizedBox(height: 50),
        ChangeNotifierProvider(create: (BuildContext context) => viewModel,
        child: const RadioControlDisplay())
      ],
    );
  }

  @override
  RadioTapViewModel initializeViewModel() {
    return RadioTapViewModel(RadioTapRepoImplNetWork());
  }
}
