import 'package:bookly_app/core/utils/colors/app_colors.dart';
import 'package:bookly_app/core/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.primaryColor),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
