import 'package:doctor_hunt/app/features/favorite/presentation/widgets/favorite_button.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:doctor_hunt/app/shared/widgets/photo_view.dart';
import 'package:doctor_hunt/app/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:flutter/material.dart';

class FavDoctorsCard extends StatelessWidget {
  const new({super.key, required this.doctorModel});

  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      horizontalPadding: 10,
      verticalPadding: 10,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: FavoriteButton(doctorId: doctorModel.id!),
          ),
          PhotoView(name: AppImages.assetsImagesOnboarding1, radius: 80),
          SizedBox(height: 10),
          Text(doctorModel.name, style: context.semiBold16),
          Text(doctorModel.specialty, style: context.regular12Primary),
        ],
      ),
    );
  }
}
