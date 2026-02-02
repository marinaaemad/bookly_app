import 'package:bookly_app/core/utils/colors/app_colors.dart';
import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:bookly_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        hintStyle: Style.textStyle18SemiBold,
        suffixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<SearchCubit>(
              context,
            ).searchedNamed(controller.text);
          },
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
