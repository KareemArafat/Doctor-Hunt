import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.rubikTextTheme(),
        primaryColor: AppColors.primaryColor,
      ),
    );
  }
}
