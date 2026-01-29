// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:bookly_app/core/utils/service/api_service.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(apiService: getIt.get<ApiService>()),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepo(apiService: getIt.get<ApiService>()),
  );
}

class AuthRepo {
  final ApiService apiService;
  AuthRepo({required this.apiService});
}
