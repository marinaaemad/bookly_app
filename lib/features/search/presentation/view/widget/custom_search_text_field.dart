import 'package:bookly_app/core/utils/colors/app_colors.dart';
import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        hintStyle: Style.textStyle18SemiBold,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: 0.5,
            child: Icon(Icons.search, size: 35),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.grayColor),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
