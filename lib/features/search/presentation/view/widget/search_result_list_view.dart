import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/view/widget/initial_list_view.dart';
import 'package:bookly_app/features/search/presentation/view/widget/success_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return InitialListView(
            recentSearchesCount: state.recentSearches.length,
            allRecentSearches: state.recentSearches,
          );
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errMesg: state.errMsg);
        } else if (state is SearchSuccess) {
          if (state.books.isEmpty) {
            return Center(
              child: Text('No Matching Data', style: Style.textStyle18SemiBold),
            );
          }
          return SuccessListView(
            booksCount: state.books.length,
            allBooks: state.books,
          );
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
