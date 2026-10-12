import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/user_model_cubit/user_model_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctors_view_body.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/settings_view_body.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int selectedIndex = 0;
  final List<Widget> pages = const [DoctorsViewBody(), SettingsViewBody()];

  @override
  void initState() {
    super.initState();
    context.read<UserModelCubit>().getUserModel();
  }

  void onTab(int index) => setState(() => selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: pages[selectedIndex],
      floatingActionButton: selectedIndex == 0
          ? CustomButton(
              onPressed: () => CreateDoctorRoute().push(context),
              size: Size(120, 40),
              radius: 100,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add, size: 16),
                  SizedBox(width: 6),
                  Text(t.addDoctor, style: context.regular12White),
                ],
              ),
            )
          : null,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onTab,
            backgroundColor: AppColors.white,
            selectedFontSize: 0,
            items: [
              bottomBarItem(image: AppImages.assetsIconsDoctors),
              bottomBarItem(image: AppImages.assetsIconsSettings),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomBarItem({required String image}) {
    return BottomNavigationBarItem(
      activeIcon: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          image,
          height: 20,
          width: 20,
          color: AppColors.white,
        ),
      ),
      icon: Image.asset(
        image,
        height: 20,
        width: 20,
        color: AppColors.secondary,
      ),
      label: '',
    );
  }
}
