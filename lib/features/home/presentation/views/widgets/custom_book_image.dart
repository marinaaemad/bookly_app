import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          placeholder: (context, url) => CustomLoadingIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: BoxFit.fill,
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
