import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BooksListView(boxNumber: 10),
                SizedBox(height: 30),
                Text('Best Seller', style: Style.textStyle18SemiBold),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
