import 'package:doctor_hunt/app/core/extensions/custom_snack_bar.dart';
import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_button.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/cubit_cubit/signout_cubit.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutConfirm extends StatelessWidget {
  const LogoutConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignoutCubit(),
      child: BlocConsumer<SignoutCubit, SignoutState>(
        listener: (context, state) {
          if (state is SignoutFailure) {
            context.showCustomSnackBar(message: state.message);
          } else if (state is SignoutSuccess) {
            ChooseRuleRoute().go(context);
          }
        },
        builder: (context, state) {
          if (state is SignoutLoading) {
            return Center(
              child: CustomLoadingWidget(size: 1, color: AppColors.primary),
            );
          }
          return AlertDialog(
            backgroundColor: AppColors.white,
            insetPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            title: Text(t.logoutConfirmationTitle, style: context.bold20),
            content: Text(
              t.logoutConfirmationMessage,
              style: context.regular16Secondary,
            ),
            actions: [
              CustomTextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(t.cancel, style: context.medium16Primary),
              ),
              CustomTextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  await context.read<SignoutCubit>().signout();
                },
                child: Text(t.yes, style: context.medium16Primary),
              ),
            ],
          );
        },
      ),
    );
  }
}
