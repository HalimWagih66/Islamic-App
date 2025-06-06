import 'package:go_router/go_router.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view/azkar_details_view.dart';
import 'package:islamic_app/features/home_layout/presentation/view/home_layout.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view/quran_details_view.dart';

class AppRouter{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: QuranDetailsView.routeName,
        builder: (context, state) => QuranDetailsView(),
      ),
      GoRoute(
        path: HomeLayout.routeName,
        builder: (context, state) => const HomeLayout(),
      ),
      GoRoute(
        path: AzkarDetailsView.routeName,
        builder: (context, state) => AzkarDetailsView(categoryName: state.extra as String),
      ),
    ],
  );
}