import 'package:bookly_app/features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: const Column(children: [CustomSearchTextFiled()]),
    );
  }
}
