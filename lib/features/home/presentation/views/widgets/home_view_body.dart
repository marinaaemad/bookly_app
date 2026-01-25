import 'package:bookly_app/core/utils/assets/app_assets.dart';
import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BooksListView(boxNumber: 10),
          SizedBox(height: 30),
          Text('Best Seller', style: Style.textStyle20Regular),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // to get all width and hight of container
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppAssets.itemImage),
                ),
              ),
            ),
          ),
          Text("Harry Potter And The Global Of Fire"),
        ],
      ),
    );

    // title:
    // subtitle: Column(
    //   children: [
    //     Text('J.K Rowling'),
    //     Row(children: [Text('19.99%'), Text("لاالاالا")]),
    //   ],
    //   ),
    // );
  }
}
