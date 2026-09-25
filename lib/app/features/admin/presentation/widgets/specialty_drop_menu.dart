import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/utils/app_consts.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SpecialtyDropMenu extends StatelessWidget {
  const SpecialtyDropMenu({
    super.key,
    this.prefixIcon,
    required this.valueListenable,
  });

  final Widget? prefixIcon;
  final ValueNotifier<String?> valueListenable;

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: color),
    gapPadding: 0,
  );

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      valueListenable: valueListenable,

      validator: (value) => value == null ? t.pleaseSelectSpecialty : null,
      onChanged: (value) => valueListenable.value = value!,
      hint: Text(t.selectSpecialty, style: context.light16Secondary),
      items: AppConsts.specialties
          .map(
            (item) => DropdownItem<String>(
              value: item,
              child: Text(item, style: context.light16),
            ),
          )
          .toList(),
      iconStyleData: IconStyleData(
        icon: Icon(Icons.arrow_drop_down, color: AppColors.secondary, size: 24),
      ),
      menuItemStyleData: MenuItemStyleData(
        useDecorationHorizontalPadding: true,
      ),
      dropdownStyleData: DropdownStyleData(
        maxHeight: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        fillColor: AppColors.white,
        filled: true,
        contentPadding: EdgeInsets.all(16),
        errorStyle: context.light10ErrorItems,
        enabledBorder: _border(AppColors.secondary.withValues(alpha: 0.16)),
        focusedBorder: _border(AppColors.activeItems),
        errorBorder: _border(AppColors.errorItems),
        focusedErrorBorder: _border(AppColors.errorItems),
      ),
    );
  }
}
