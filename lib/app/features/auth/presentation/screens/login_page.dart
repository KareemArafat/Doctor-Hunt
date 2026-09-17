import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/auth/presentation/controller/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/forgot_password_bottom_sheet.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/google_auth_button.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/otp_digits_bottom_sheet.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/reset_password_bottom_sheet.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const new({super.key, required this.isAdmin});
  final bool isAdmin;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController forgotPasswordEmailController =
      TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    forgotPasswordEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(
        builder: (context) {
          return CustomScaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 130),
                  Text(
                    widget.isAdmin
                        ? context.t.adminLogin
                        : context.t.loginTittle,
                    style: context.medium24,
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.isAdmin
                        ? context.t.adminLoginDescription
                        : context.t.signDescription,
                    style: context.regular14Secondary,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 65),
                  widget.isAdmin ? SizedBox(height: 55) : GoogleAuthButton(),
                  SizedBox(height: 34),
                  CustomTextField(
                    controller: emailController,
                    hintText: context.t.email,
                  ),
                  SizedBox(height: 18),
                  CustomTextField(
                    controller: passwordController,
                    hintText: context.t.password,
                    isPassword: true,
                  ),
                  SizedBox(height: 55),
                  CustomButton(
                    onPressed: () => context.read<LoginCubit>().login(
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                    size: Size(295, 55),
                    child: BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        if (state is LoginLoading) {
                          return CustomLoadingWidget(size: -2);
                        }
                        return Text(
                          context.t.login,
                          style: context.medium18White,
                        );
                      },
                    ),
                  ),
                  if (!widget.isAdmin) SizedBox(height: 17),
                  if (!widget.isAdmin)
                    GestureDetector(
                      onTap: () => showForgotPasswordBottomSheet(context),
                      child: Text(
                        context.t.forgotPassword,
                        style: context.regular14Primary,
                      ),
                    ),
                  if (!widget.isAdmin) Spacer(),
                  if (!widget.isAdmin)
                    GestureDetector(
                      onTap: () => SignupRoute().pushReplacement(context),
                      child: Text(
                        context.t.haveAccount,
                        style: context.regular14Primary,
                      ),
                    ),
                  if (!widget.isAdmin) SizedBox(height: 45),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> showForgotPasswordBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      scrollControlDisabledMaxHeightRatio: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) => ForgotPasswordBottomSheet(
        controller: forgotPasswordEmailController,
        onPressed: () {
          context.pop();
          showOtpDigitsBottomSheet(context);
        },
      ),
    );
  }

  Future<void> showOtpDigitsBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      scrollControlDisabledMaxHeightRatio: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) => OtpDigitsBottomSheet(
        onPressed: () {
          context.pop();
          showResetPasswordBottomSheet(context);
        },
      ),
    );
  }

  Future<void> showResetPasswordBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      scrollControlDisabledMaxHeightRatio: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) => ResetPasswordBottomSheet(
        newPasswordController: newPasswordController,
        confirmPasswordController: confirmPasswordController,
        onPressed: () {},
      ),
    );
  }
}
