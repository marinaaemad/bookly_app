import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/service/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> searchedByName(String query) async {
    try {
      final result = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&q=$query",
      );
      final searchedbooks = ((result['items'] as List<dynamic>?) ?? [])
          .map((item) => BookModel.fromJson(item))
          .toList();
      return right(searchedbooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
