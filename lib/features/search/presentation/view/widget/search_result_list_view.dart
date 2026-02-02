import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return ListView.builder(
            itemCount: state.recentSearches.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text(state.recentSearches[index]));
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errMesg: state.errMsg);
        } else if (state is SearchSuccess) {
          if (state.books.isEmpty) {
            return Center(child: Text('no Matching Data'));
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(book: state.books[index]),
              );
            },
          );
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
