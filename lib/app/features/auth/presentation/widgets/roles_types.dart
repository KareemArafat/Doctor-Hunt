import 'package:doctor_hunt/app/features/auth/presentation/controllers/choose_role_cubit/choose_role_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/active_role.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/disable_role.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RolesTypes extends StatelessWidget {
  const RolesTypes({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChooseRoleCubit>();

    return BlocBuilder<ChooseRoleCubit, ChooseRoleState>(
      builder: (context, state) {
        return Column(
          children: [
            if (state.isAdmin == false)
              ActiveRole(
                title: t.patient,
                description: t.chooseRolePatientDescription,
                image: AppImages.assetsIconsPatient,
              )
            else
              DisableRole(
                title: t.patient,
                description: t.chooseRolePatientDescription,
                image: AppImages.assetsIconsPatient,
                onTap: () => cubit.setRole(isAdmin: false),
              ),
            const SizedBox(height: 16),
            if (state.isAdmin == true)
              ActiveRole(
                title: t.admin,
                description: t.chooseRoleAdminDescription,
                image: AppImages.assetsIconsAdmin,
              )
            else
              DisableRole(
                title: t.admin,
                description: t.chooseRoleAdminDescription,
                image: AppImages.assetsIconsAdmin,
                onTap: () => cubit.setRole(isAdmin: true),
              ),
          ],
        );
      },
    );
  }
}
