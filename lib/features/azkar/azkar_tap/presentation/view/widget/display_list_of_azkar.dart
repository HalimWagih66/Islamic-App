import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view/azkar_details_view.dart';
import '../../view_model/azkar_tap_view_model.dart';
import 'display_zakr_title.dart';

class DisplayListOfAzkar extends StatelessWidget {
  const DisplayListOfAzkar({
    super.key,
    required this.tasbeehTapViewModel,
  });

  final AzkarTapViewModel tasbeehTapViewModel;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: tasbeehTapViewModel.azkarTitles.length,
      itemBuilder: (context, index) => DisplayZakrTitle(
        onPressed: () {
          GoRouter.of(context).push(AzkarDetailsView.routeName,extra: tasbeehTapViewModel.azkarTitles[index]);
        },
        title: tasbeehTapViewModel.azkarTitles[index],
      ),
    );
  }
}
