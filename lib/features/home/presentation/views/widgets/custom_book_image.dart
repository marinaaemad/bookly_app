import 'package:bookly_app/core/utils/assets/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // to get all width and hight of container
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppAssets.itemImage),
          ),
        ),
      ),
    );
  }
}
