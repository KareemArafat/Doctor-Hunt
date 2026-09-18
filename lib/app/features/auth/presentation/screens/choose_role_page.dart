import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/auth/presentation/controller/choose_role_cubit/choose_role_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/select_role.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseRolePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseRoleCubit(),
      child: CustomScaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 32),
                Image.asset(AppImages.assetsIconsLogo, height: 70),
                SizedBox(height: 10),
                Text(context.t.appName, style: context.bold24),
                SizedBox(height: 60),
                Text(context.t.chooseRoleTittle, style: context.regular28),
                SizedBox(height: 8),
                Text(
                  context.t.chooseRoleDescription,
                  style: context.regular14Secondary,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                SelectRole(),
                Spacer(),
                CustomButton(
                  onPressed: () async {
                    final isAdmin = await SharedPref.getIsAdmin();
                    LoginRoute(isAdmin: isAdmin).push(context);
                  },
                  size: Size(350, 55),
                  child: Text(
                    context.t.kContinue,
                    style: context.semiBold16White,
                  ),
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
