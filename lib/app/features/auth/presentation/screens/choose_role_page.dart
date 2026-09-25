import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/utils/shared_pref.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/auth/presentation/controllers/choose_role_cubit/choose_role_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/roles_types.dart';
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
        body: Column(
          children: [
            SizedBox(height: 32),
            Image.asset(AppImages.assetsIconsLogo, height: 70),
            SizedBox(height: 10),
            Text(t.appName, style: context.bold24),
            SizedBox(height: 60),
            Text(t.chooseRoleTittle, style: context.regular28),
            SizedBox(height: 8),
            Text(
              t.chooseRoleDescription,
              style: context.regular14Secondary,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            RolesTypes(),
            Spacer(),
            CustomButton(
              onPressed: () async {
                final isAdmin = await SharedPref.getIsAdmin();
                if (!context.mounted) return;
                LoginRoute(isAdmin: isAdmin).push(context);
              },
              size: Size(350, 55),
              child: Text(t.kContinue, style: context.semiBold16White),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
