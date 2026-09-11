import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class AdminLoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 130),
            Text(context.t.adminLogin, style: context.medium24),
            Text(
              context.t.adminLoginDescription,
              style: context.regular14Secondary,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 170),
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
              onPressed: () => AdminHomeRoute().go(context),
              size: Size(295, 55),
              child: Text(context.t.login, style: context.medium18White),
            ),
          ],
        ),
      ),
    );
  }
}
