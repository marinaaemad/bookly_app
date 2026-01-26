import 'package:bookly_app/core/utils/assets/app_assets.dart';
import 'package:bookly_app/core/utils/colors/app_colors.dart';
import 'package:bookly_app/core/utils/router/routes_name.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(AppAssets.imageLogo, height: 18),
          // title: const Text('Bookly'),
          actions: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(RoutesName.searchView);
              },
              icon: const Icon(
                Icons.search,
                size: 32,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
        body: HomeViewBody(),
      ),
    );
  }
}
