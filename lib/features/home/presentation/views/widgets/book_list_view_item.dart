import 'package:bookly_app/core/utils/assets/app_assets.dart';
import 'package:bookly_app/core/utils/colors/app_colors.dart';
import 'package:bookly_app/core/utils/router/routes_name.dart';
import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RoutesName.bookDetailsView);
      },
      child: SizedBox(
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
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Potter And The Global Of Fire",
                      style: Style.textStyle20Normal.copyWith(
                        fontFamily: 'GT Sectra Fine',
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'J.K Rowling',
                    style: Style.textStyle14SemiBold.copyWith(
                      color: AppColors.grayColor,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "19.99",
                        style: Style.textStyle20Normal.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 40),
                      BookRating(mainAxisAlignment: MainAxisAlignment.center),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
