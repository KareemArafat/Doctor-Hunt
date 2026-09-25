import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/auth/presentation/controllers/signup_cubit/signup_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/google_auth_button.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool iAgree = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: Builder(
        builder: (context) {
          return CustomScaffold(
            body: Column(
              children: [
                SizedBox(height: 130),
                Text(t.signupTittle, style: context.medium24),
                SizedBox(height: 8),
                Text(
                  t.signDescription,
                  style: context.regular14Secondary,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 65),
                GoogleAuthButton(),
                SizedBox(height: 34),
                CustomTextField(controller: nameController, hintText: t.name),
                SizedBox(height: 18),
                CustomTextField(controller: emailController, hintText: t.email),
                SizedBox(height: 18),
                CustomTextField(
                  controller: passwordController,
                  hintText: t.password,
                  isPassword: true,
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() => iAgree = !iAgree),
                      child: Icon(
                        Icons.circle,
                        size: 16,
                        color: iAgree
                            ? AppColors.primary
                            : AppColors.secondary.withValues(alpha: 0.5),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        t.agreePrivacyPolicy,
                        style: context.regular12Secondary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 55),
                CustomButton(
                  onPressed: () => context.read<SignupCubit>().signup(
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                  ),
                  size: Size(295, 55),
                  child: BlocBuilder<SignupCubit, SignupState>(
                    builder: (context, state) {
                      if (state is SignupLoading) {
                        return CustomLoadingWidget(size: -2);
                      }
                      return Text(t.signup, style: context.medium18White);
                    },
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () async {
                    final isAdmin = await SharedPref.getIsAdmin();
                    LoginRoute(isAdmin: isAdmin).pushReplacement(context);
                  },
                  child: Text(
                    t.DoNotHaveAccount,
                    style: context.regular14Primary,
                  ),
                ),
                SizedBox(height: 45),
              ],
            ),
          );
        },
      ),
    );
  }
}
