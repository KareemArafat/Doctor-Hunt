import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/auth/presentation/controller/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/forgot_password_bottom_sheet.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/google_auth_button.dart';
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
  final emailController = TextEditingController(text: 'kareem@gmail.com');
  final passwordController = TextEditingController(text: '12345678');
  final forgotPasswordEmailController = TextEditingController();

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
      child: CustomScaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 130),
              Text(
                widget.isAdmin ? context.t.adminLogin : context.t.loginTittle,
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
              BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccess) {
                    widget.isAdmin
                        ? AdminHomeRoute().go(context)
                        : HomeRoute().go(context);
                  }
                },
                builder: (context, state) {
                  return CustomButton(
                    onPressed: () => context.read<LoginCubit>().login(
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                    size: const Size(295, 55),
                    child: state is LoginLoading
                        ? const CustomLoadingWidget(size: -2)
                        : Text(context.t.login, style: context.medium18White),
                  );
                },
              ),
              if (!widget.isAdmin) ...[
                const SizedBox(height: 17),
                GestureDetector(
                  onTap: () => showForgotPasswordBottomSheet(context),
                  child: Text(
                    context.t.forgotPassword,
                    style: context.regular14Primary,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => SignupRoute().pushReplacement(context),
                  child: Text(
                    context.t.haveAccount,
                    style: context.regular14Primary,
                  ),
                ),
                const SizedBox(height: 45),
              ],
            ],
          ),
        ),
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
        onPressed: () => context.pop(),
      ),
    );
  }
}
