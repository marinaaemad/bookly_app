part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {
  final List<String> recentSearches;

  const SearchInitial({required this.recentSearches});
  @override
  List<Object> get props => [recentSearches];
}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<BookModel> books;

  const SearchSuccess({required this.books});
  @override
  List<Object> get props => [books];
}

final class SearchFailure extends SearchState {
  final String errMsg;

  const SearchFailure({required this.errMsg});
  @override
  List<Object> get props => [errMsg];
}
