import 'package:doctor_hunt/app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const new({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -33,
            left: -100,
            child: Container(
              height: 216,
              width: 216,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blueShadow.withValues(alpha: 0.72),
                    blurRadius: 269,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -33,
            right: -69,
            child: Container(
              height: 216,
              width: 216,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.greenShadow.withValues(alpha: 0.3),
                    blurRadius: 121,
                  ),
                ],
              ),
            ),
          ),
          body,
        ],
      ),
    );
  }
}
