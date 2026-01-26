import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/view/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFiled(),
          SizedBox(height: 16),
          Text('Search Result', style: Style.textStyle18SemiBold),
          SizedBox(height: 8),

          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
