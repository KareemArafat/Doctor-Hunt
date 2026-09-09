import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/external_sign_button.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(context.t.signup, style: context.medium24),
          Text(
            context.t.signDescription,
            style: context.regular14Secondary,
            textAlign: TextAlign.center,
          ),
          Row(children: [Spacer(), ExternalSignButton(), Container()]),
          Spacer(),
        ],
      ),
    );
  }
}
