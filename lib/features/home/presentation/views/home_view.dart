import 'package:bookly_app/core/utils/assets/app_assets.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(AppAssets.imagesLogo, height: 18),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 32),
          ),
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
