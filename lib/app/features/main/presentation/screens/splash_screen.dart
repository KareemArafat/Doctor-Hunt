import 'dart:async';

import 'package:doctor_hunt/app/core/router/routes_names.dart';
import 'package:doctor_hunt/app/core/utils/app_images.dart';
import 'package:doctor_hunt/app/core/utils/app_styles.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      context.go(RoutesNames.onboarding1);
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.logo)),
          const SizedBox(height: 10),
          Text('Doctor Hunt', style: AppStyles.style25),
        ],
      ),
    );
  }
}
