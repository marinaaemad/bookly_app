// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/features/search/data/data_source/search_local_data_source.dart';
import 'package:bookly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:bookly_app/core/utils/service/api_service.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:get_storage/get_storage.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(apiService: getIt.get<ApiService>()),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(apiService: getIt.get<ApiService>()),
  );
  getIt.registerSingleton<GetStorage>(GetStorage());
  getIt.registerSingleton<SearchLocalDataSource>(
    SearchLocalDataSource(box: getIt.get<GetStorage>()),
  );
}
