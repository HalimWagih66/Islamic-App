import 'package:go_router/go_router.dart';
import 'package:islamic_app/features/home_layout/presentation/view/home_layout.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view/quran_details_view.dart';

import '../../features/quran/quran_tap/data/model/Data.dart';

class AppRouter{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: QuranDetailsView.routeName,
        builder: (context, state) => QuranDetailsView(informationAboutTheSurahModel: state.extra as InformationAboutTheSurahModel,),
      ),
      GoRoute(
        path: HomeLayout.routeName,
        builder: (context, state) => const HomeLayout(),
      ),

    ],
  );
}