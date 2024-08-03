import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view/widget/show_image_sabhuh.dart';

import 'display_list_azkar_title.dart';

class TasbeehTapBody extends StatelessWidget {
  const TasbeehTapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: ShowImageSabhuh()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        DisplayListAzkarTitle()
      ],
    );
  }
}