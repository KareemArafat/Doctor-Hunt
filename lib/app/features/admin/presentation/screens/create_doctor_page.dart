import 'package:doctor_hunt/app/core/extensions/custom_snack_bar.dart';
import 'package:doctor_hunt/app/core/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_loading_widget.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/core/widgets/custom_text_field.dart';
import 'package:doctor_hunt/app/features/admin/data/models/doctor_model.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/all_doctors_cubit/all_doctors_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/create_doctor_cubit/create_doctor_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/specialty_drop_menu.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateDoctorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CreateDoctorPage> createState() => _CreateDoctorPageState();
}

class _CreateDoctorPageState extends State<CreateDoctorPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final specialtyNotifier = ValueNotifier<String?>(null);

  @override
  void dispose() {
    nameController.dispose();
    specialtyNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateDoctorCubit(),
      child: CustomScaffold(
        body: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: t.createDoctor),
              SizedBox(height: 50),
              Center(
                child: Image.asset(
                  AppImages.assetsIconsAddPhoto,
                  height: 96,
                  width: 96,
                ),
              ),
              SizedBox(height: 10),
              Center(child: Text(t.addPhoto, style: context.medium12Primary)),
              SizedBox(height: 30),
              Text(t.doctorName, style: context.medium12),
              SizedBox(height: 8),
              CustomTextField(
                controller: nameController,
                hintText: t.doctorNameExample,
              ),
              SizedBox(height: 20),
              Text(t.medicalSpecialty, style: context.medium12),
              SizedBox(height: 8),
              SpecialtyDropMenu(valueListenable: specialtyNotifier),
              SizedBox(height: 50),
              BlocConsumer<CreateDoctorCubit, CreateDoctorState>(
                listener: (context, state) async {
                  if (state is CreateDoctorSuccess) {
                    context.pop();
                    context.showCustomSnackBar(
                      message: t.doctorAddedSuccessfully,
                      status: SnackBarStatus.success,
                    );
                    await context.read<AllDoctorsCubit>().getAllDoctors();
                  }
                },
                builder: (context, state) {
                  return CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<CreateDoctorCubit>().createDoctor(
                          doctorModel: DoctorModel(
                            name: nameController.text,
                            specialty: specialtyNotifier.value!,
                            status: t.active,
                          ),
                        );
                      }
                    },
                    child: state is CreateDoctorLoading
                        ? CustomLoadingWidget(size: -2)
                        : Text(t.createDoctor, style: context.semiBold16White),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
