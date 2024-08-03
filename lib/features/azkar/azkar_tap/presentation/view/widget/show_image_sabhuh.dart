import 'package:flutter/material.dart';
import 'display_body_image.dart';
import 'display_head_image.dart';

class ShowImageSabhuh extends StatelessWidget {
  const ShowImageSabhuh({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DisplayHeadImage(),
        DisplayBodyImage(),
      ],
    );
  }
}


