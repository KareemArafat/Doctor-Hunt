import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const new({super.key, required this.onPressed, required this.child});
  final Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      //  style: TextButton.styleFrom(foregroundColor: AppColors.secondary),
      onPressed: onPressed,
      child: child,
    );
  }
}
