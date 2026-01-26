import 'package:bookly_app/core/utils/colors/app_colors.dart';
import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: AppColors.yellowColor),
        const SizedBox(width: 6.3),
        const Text("4.8", style: Style.textStyle16Medium),
        const SizedBox(width: 5),

        Text(
          "(254)",
          style: Style.textStyle14SemiBold.copyWith(color: AppColors.grayColor),
        ),
      ],
    );
  }
}
