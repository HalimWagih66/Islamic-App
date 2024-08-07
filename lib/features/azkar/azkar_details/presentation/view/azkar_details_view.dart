import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/core/base/base_state.dart';
import 'package:islamic_app/core/utils/widgets/custom_background_container_for_app.dart';
import 'package:islamic_app/features/azkar/azkar_details/data/repos/azkar_details_repo_local.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view/widgets/display_body_the_azkar_details.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view_model/azkar_details_navigator.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view_model/azkar_details_view_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import '../../../../home_layout/presentation/view/widgets/custom_app_bar.dart';

class AzkarDetailsView extends StatefulWidget {
  const AzkarDetailsView({super.key, required this.categoryName});

  static const routeName = "/AzkarDetailsView";
  final String categoryName;

  @override
  State<AzkarDetailsView> createState() => _AzkarDetailsViewState();
}

class _AzkarDetailsViewState
    extends BaseState<AzkarDetailsView, AzkarDetailsViewModel>
    implements AzkarDetailsNavigator {
  @override
  Widget build(BuildContext context) {
    viewModel.categoryName = widget.categoryName;
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return CustomBackgroundContainerForApp(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          title: widget.categoryName,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            color: settingsProvider.themeApp.primaryColor,
          ),
        ),
        body: ChangeNotifierProvider(
          create: (context) => viewModel,
          child: const DisplayBodyTheAzkarDetails(),
        ),
      ),
    );
  }

  @override
  AzkarDetailsViewModel initializeViewModel() {
    return AzkarDetailsViewModel(AzkarDetailsRepoLocal());
  }
}
