import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/cubits/newest_books_cubit/newest_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(book: state.books[index]),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return Center(child: CustomErrorWidget(errMesg: state.errMessage));
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
