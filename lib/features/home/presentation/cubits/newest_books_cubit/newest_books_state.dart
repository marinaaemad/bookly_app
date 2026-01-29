import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();
  @override
  List<Object?> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  final String errMessage;
  //question   A constant constructor can't call a non-constant super constructor of 'NewestBooksFailure'.
  ///Try calling a constant constructor in the superclass, or removing the keyword 'const' from the constructor.dartconst_constructor_with_non_const_super

  const NewestBooksFailure({required this.errMessage});
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess({required this.books});
}
