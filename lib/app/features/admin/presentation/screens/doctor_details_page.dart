import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/shared/models/doctor_model.dart';
import 'package:doctor_hunt/app/shared/widgets/doctor_status.dart';
import 'package:doctor_hunt/app/shared/widgets/photo_view.dart';
import 'package:doctor_hunt/app/core/widgets/custom_list_tile.dart';
import 'package:doctor_hunt/app/shared/widgets/shadow_card.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorDetailsPage extends StatelessWidget {
  const new({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAppBar(title: t.doctorDetails),
          SizedBox(height: 50),
          PhotoView(
            name: doctorModel.name,
            icon: AppImages.assetsIconsCheck,
            radius: 112,
          ),
          SizedBox(height: 8),
          Text(
            doctorModel.name,
            style: context.bold24,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          DoctorStatus(isActive: doctorModel.isActive),
          SizedBox(height: 30),
          ShadowCard(
            child: Column(
              children: [
                CustomListTile(
                  prefix: Icon(
                    FontAwesomeIcons.stethoscope.data,
                    size: 18,
                    color: AppColors.primary,
                  ),
                  title: t.specialty,
                  description: doctorModel.specialty,
                  trailing: SizedBox(),
                ),
                Divider(
                  color: AppColors.disableItemsBackground,
                  height: 1,
                  indent: 16,
                  endIndent: 16,
                ),
                CustomListTile(
                  prefix: Icon(
                    FontAwesomeIcons.star.data,
                    size: 18,
                    color: AppColors.primary,
                  ),
                  title: t.rating,
                  description: Row(
                    children: [
                      ...List.generate(
                        5,
                        (index) => Icon(
                          Icons.star_border_purple500_rounded,
                          size: 16,
                          color: doctorModel.rating > index
                              ? AppColors.rateStar
                              : AppColors.secondary,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '${doctorModel.rating}',
                        style: context.medium10Secondary,
                      ),
                      SizedBox(width: 6),
                      Text(
                        '• ${doctorModel.reviews} ${t.reviews}',
                        style: context.medium10Secondary,
                      ),
                    ],
                  ),
                  trailing: SizedBox(),
                ),
                Divider(
                  color: AppColors.disableItemsBackground,
                  height: 1,
                  indent: 16,
                  endIndent: 16,
                ),
                CustomListTile(
                  prefix: Icon(
                    FontAwesomeIcons.dollarSign.data,
                    size: 18,
                    color: AppColors.primary,
                  ),
                  title: t.consultationFee,
                  description: '',
                  trailing: SizedBox(),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          CustomButton(
            onPressed: () => EditDoctorRoute($extra: doctorModel).push(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit, size: 18),
                SizedBox(width: 8),
                Text(t.editDoctor, style: context.semiBold16White),
              ],
            ),
          ),
          SizedBox(height: 10),
          CustomButton(
            onPressed: () => EditDoctorRoute($extra: doctorModel).push(context),
            backgroundColor: AppColors.white,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit_calendar, size: 18, color: AppColors.primary),
                SizedBox(width: 8),
                Text(t.manageAvailability, style: context.semiBold16Primary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
