import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const new({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.suffixIcon,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final Widget? suffixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isPassword;

  @override
  void initState() {
    super.initState();
    isPassword = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isPassword,
      style: context.light16,
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                highlightColor: AppColors.transparent,
                onPressed: () => setState(() => isPassword = !isPassword),
                icon: Icon(
                  isPassword ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.secondary,
                ),
              )
            : widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: context.light16Secondary,
        fillColor: AppColors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.secondary.withValues(alpha: 0.16),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.activeItems),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.errorItems),
        ),
      ),
    );
  }
}
