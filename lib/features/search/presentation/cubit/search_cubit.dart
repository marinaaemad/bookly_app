import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/data_source/search_local_data_source.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo, {required this.searchLocalDataSource})
    : super(SearchInitial(recentSearches: []));
  final SearchRepo searchRepo;
  final SearchLocalDataSource searchLocalDataSource;

  void recentSearches() {
    final recent = searchLocalDataSource.getRecentSearches();
    emit(SearchInitial(recentSearches: recent));
  }

  Future<void> searchedNamed(final String query) async {
    if (query.trim().isEmpty) return;
    emit(SearchLoading());

    final result = await searchRepo.searchedByName(query);
    result.fold(
      (failure) {
        emit(SearchFailure(errMsg: failure.errorMessage));
      },
      (searchedBooks) {
        searchLocalDataSource.saveSearches(query);
        emit(SearchSuccess(books: searchedBooks));
      },
    );
  }
}
