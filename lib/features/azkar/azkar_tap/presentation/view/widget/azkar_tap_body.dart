import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view/widget/show_image_in_azkar_header.dart';

import 'display_body_the_azkar.dart';

class AzkarTapBody extends StatelessWidget {
  const AzkarTapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: ShowImageInAzkarHeader()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        DisplayBodyTheAzkar()
      ],
    );
  }
}