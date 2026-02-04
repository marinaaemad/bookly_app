import 'package:bookly_app/core/utils/router/routes_name.dart';
import 'package:bookly_app/core/utils/service/api_service.dart';
import 'package:bookly_app/core/utils/service/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/data/data_source/search_local_data_source.dart';
import 'package:bookly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(book: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: RoutesName.searchView,
        name: RoutesName.searchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(
            getIt.get<SearchRepoImpl>(),
            searchLocalDataSource: getIt.get<SearchLocalDataSource>(),
          )..recentSearches(),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
