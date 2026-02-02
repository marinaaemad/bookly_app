import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:bookly_app/features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/view/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFiled(controller: searchController),
          const SizedBox(height: 16),
          const Text('Search Result', style: Style.textStyle18SemiBold),
          const SizedBox(height: 8),

          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
