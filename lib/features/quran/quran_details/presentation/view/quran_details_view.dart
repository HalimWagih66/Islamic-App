import 'package:flutter/material.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view/widgets/quran_details_body.dart';
import '../../../quran_tap/data/model/Data.dart';

class QuranDetailsView extends StatelessWidget {
  const QuranDetailsView({super.key, required this.informationAboutTheSurahModel});
  static const routeName = "/QuranDetailsView";
  final InformationAboutTheSurahModel informationAboutTheSurahModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuranDetailsBody(informationAboutTheSurahModel: informationAboutTheSurahModel),
    );
  }
}

