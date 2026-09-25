import 'package:doctor_hunt/app/features/auth/presentation/controllers/choose_role_cubit/choose_role_cubit.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/active_role.dart';
import 'package:doctor_hunt/app/features/auth/presentation/widgets/disable_role.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RolesTypes extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChooseRoleCubit>();

    return BlocBuilder<ChooseRoleCubit, ChooseRoleState>(
      builder: (context, state) {
        if (state is ChooseRoleAdmin) {
          return Column(
            children: [
              DisableRole(
                title: t.patient,
                description: t.chooseRolePatientDescription,
                image: AppImages.assetsIconsPatient,
                onTap: () => cubit.chooseRolePatient(),
              ),
              SizedBox(height: 16),
              ActiveRole(
                title: t.admin,
                description: t.chooseRoleAdminDescription,
                image: AppImages.assetsIconsAdmin,
              ),
            ],
          );
        }
        if (state is ChooseRolePatient) {
          return Column(
            children: [
              ActiveRole(
                title: t.patient,
                description: t.chooseRolePatientDescription,
                image: AppImages.assetsIconsPatient,
              ),
              SizedBox(height: 16),
              DisableRole(
                title: t.admin,
                description: t.chooseRoleAdminDescription,
                image: AppImages.assetsIconsAdmin,
                onTap: () => cubit.chooseRoleAdmin(),
              ),
            ],
          );
        }
        return Column(
          children: [
            DisableRole(
              title: t.patient,
              description: t.chooseRolePatientDescription,
              image: AppImages.assetsIconsPatient,
              onTap: () async => await cubit.chooseRolePatient(),
            ),
            SizedBox(height: 16),
            DisableRole(
              title: t.admin,
              description: t.chooseRoleAdminDescription,
              image: AppImages.assetsIconsAdmin,
              onTap: () async => await cubit.chooseRoleAdmin(),
            ),
          ],
        );
      },
    );
  }
}
