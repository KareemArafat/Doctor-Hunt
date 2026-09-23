import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const new({
    super.key,
    this.controller,
    this.text,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.isPassword = false,
    this.isReadOnly = false,
  });
  final TextEditingController? controller;
  final String? text;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isPassword;
  final bool isReadOnly;

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

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: color),
    gapPadding: 0,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.isReadOnly,
      initialValue: widget.text,
      controller: widget.controller,
      obscureText: isPassword,
      style: context.light16,
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
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
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        hintStyle: context.light16Secondary,
        fillColor: AppColors.white,
        filled: true,
        enabledBorder: _border(AppColors.secondary.withValues(alpha: 0.16)),
        disabledBorder: _border(AppColors.secondary.withValues(alpha: 0.16)),
        focusedBorder: _border(AppColors.activeItems),
        errorBorder: _border(AppColors.errorItems),
        focusedErrorBorder: _border(AppColors.errorItems),
      ),
    );
  }
}
