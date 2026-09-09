import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/google_auth_button.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 130),
            Text(context.t.loginTittle, style: context.medium24),
            Text(
              context.t.signDescription,
              style: context.regular14Secondary,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 65),
            GoogleAuthButton(),
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
              onPressed: () {},
              size: Size(295, 55),
              child: Text(context.t.login, style: context.medium18White),
            ),
            SizedBox(height: 17),
            GestureDetector(
              onTap: () {},
              child: Text(
                context.t.forgotPassword,
                style: context.regular14Primary,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => SignupRoute().pushReplacement(context),
              child: Text(
                context.t.haveAccount,
                style: context.regular14Primary,
              ),
            ),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
