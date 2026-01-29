import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/presentation/cubits/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(errMessage: failure.errorMessage));
      },
      (books) {
        FeaturedBooksSuccess(books: books);
      },
    );
  }
}
