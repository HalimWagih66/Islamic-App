import 'package:go_router/go_router.dart';
import 'package:islamic_app/features/home_layout/presentation/view/home_layout.dart';

class AppRouter{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: HomeLayout.routeName,
        builder: (context, state) => const HomeLayout(),
      ),

    ],
  );
}