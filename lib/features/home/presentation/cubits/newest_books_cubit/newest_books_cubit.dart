import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/presentation/cubits/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  //diff from this and onther ??
  NewestBooksCubit(super.initialState, {required this.homeRepo});
  final HomeRepo homeRepo;

  Future<void> featchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(errMessage: failure.errorMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books: books));
      },
    );
  }
}
