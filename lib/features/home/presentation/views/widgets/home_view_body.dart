import 'package:bookly_app/core/utils/assets/app_assets.dart';
import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BooksListView(boxNumber: 10),
        const Text('Best Sellers', style: Style.titleMedium),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(AppAssets.itemImage),
      title: Text("Harry Potter And The Global Of Fire"),
      subtitle: Column(
        children: [
          Text('J.K Rowling'),
          Row(children: [Text('19.99%')]),
        ],
      ),
    );
  }
}
