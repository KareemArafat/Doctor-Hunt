import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const new({
    super.key,
    required this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.appBar,
    this.withPadding = true,
  });
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;
  final bool withPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      backgroundColor: AppColors.mainBackground,
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
                    color: AppColors.blueShadow.withValues(alpha: 0.75),
                    blurRadius: 270,
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
                    blurRadius: 120,
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            top: withPadding,
            child: Padding(
              padding: withPadding
                  ? const EdgeInsets.symmetric(horizontal: 20)
                  : EdgeInsets.zero,
              child: body,
            ),
          ),
        ],
      ),
    );
  }
}
