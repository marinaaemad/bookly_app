import 'package:bookly_app/core/utils/router/routes_name.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: RoutesName.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: RoutesName.homeView,
        name: RoutesName.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: RoutesName.bookDetailsView,
        name: RoutesName.bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: RoutesName.searchView,
        name: RoutesName.searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
