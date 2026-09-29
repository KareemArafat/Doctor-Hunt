import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/all_doctors_cubit/all_doctors_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/edit_doctor_cubit/edit_doctor_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/change_doctor_status.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctor_image_view.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/home_page_app_bar.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/specialty_drop_menu.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditDoctorPage extends StatefulWidget {
  const new({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  State<EditDoctorPage> createState() => _EditDoctorPageState();
}

class _EditDoctorPageState extends State<EditDoctorPage> {
  late TextEditingController nameController;
  late TextEditingController statusController;
  late ValueNotifier<String> specialtyNotifier;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.doctorModel.name);
    statusController = TextEditingController(text: widget.doctorModel.status);
    specialtyNotifier = ValueNotifier(widget.doctorModel.specialty);
  }

  @override
  void dispose() {
    nameController.dispose();
    statusController.dispose();
    specialtyNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditDoctorCubit(),
      child: CustomScaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePageAppBar(title: t.editDoctor, isMainPage: false),
            SizedBox(height: 50),
            DoctorImageView(
              image: AppImages.assetsImagesOnboarding1,
              imageIcon: AppImages.assetsIconsCamera,
            ),
            SizedBox(height: 10),
            Center(
              child: Text(t.tapPhotoToChange, style: context.medium12Primary),
            ),
            SizedBox(height: 30),
            Text(t.doctorName, style: context.medium12),
            SizedBox(height: 8),
            CustomTextField(
              controller: nameController,
              prefixIcon: Image.asset(
                AppImages.assetsIconsProfile,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 20),
            Text(t.medicalSpecialty, style: context.medium12),
            SizedBox(height: 8),
            SpecialtyDropMenu(
              valueListenable: specialtyNotifier,
              prefixIcon: Image.asset(
                AppImages.assetsIconsSpecialty,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 20),
            Text(t.doctorStatus, style: context.medium12),
            SizedBox(height: 8),
            ChangeDoctorStatus(statusController: statusController),
            SizedBox(height: 50),
            BlocConsumer<EditDoctorCubit, EditDoctorState>(
              listener: (context, state) async {
                if (state is EditDoctorSuccess ||
                    state is DeleteDoctorSuccess) {
                  AdminHomeRoute().go(context);
                  await context.read<AllDoctorsCubit>().getAllDoctors();
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    CustomButton(
                      onPressed: () =>
                          context.read<EditDoctorCubit>().editDoctor(
                            doctorModel: DoctorModel(
                              id: widget.doctorModel.id,
                              name: nameController.text,
                              specialty: specialtyNotifier.value,
                              status: statusController.text,
                            ),
                          ),
                      size: Size(350, 50),
                      child: state is EditDoctorLoading
                          ? CustomLoadingWidget(size: -2)
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check, size: 20),
                                SizedBox(width: 8),
                                Text(
                                  t.saveChanges,
                                  style: context.semiBold14White,
                                ),
                              ],
                            ),
                    ),
                    Center(
                      child: state is DeleteDoctorLoading
                          ? CustomLoadingWidget(
                              size: -2,
                              color: AppColors.primary,
                            )
                          : CustomTextButton(
                              onPressed: () => context
                                  .read<EditDoctorCubit>()
                                  .deleteDoctor(id: widget.doctorModel.id!),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.delete,
                                    size: 18,
                                    color: AppColors.errorItems,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    t.deleteDoctor,
                                    style: context.semiBold12ErrorItems,
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
