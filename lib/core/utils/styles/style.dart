import 'package:bookly_app/core/utils/colors/app_colors.dart';
import 'package:flutter/widgets.dart';

abstract class Style {
  static const textStyle18SemiBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20Normal = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: 'GT Sectra Fine',
    // color: AppColors.grayColor,
  );
  static const textStyle14SemiBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static const textStyle16Medium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle30Normal = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
  );
}
