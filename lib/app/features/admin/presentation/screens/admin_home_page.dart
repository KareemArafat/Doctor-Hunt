import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/doctors_view_body.dart';
import 'package:doctor_hunt/app/features/admin/presentation/widgets/settings_view_body.dart';
import 'package:doctor_hunt/generated/app_images.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int selectedIndex = 0;

  final List<Widget> pages = const [DoctorsViewBody(), SettingsViewBody()];

  void onItemTapped(int index) => setState(() => selectedIndex = index);

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
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: Theme(
          data: Theme.of(context).copyWith(
            highlightColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            backgroundColor: AppColors.white,
            selectedFontSize: 0,
            items: [
              BottomNavigationBarItem(
                icon: barItem(context: context, index: 0),
                label: '',
                activeIcon: barItem(context: context, index: 0, isActive: true),
              ),
              BottomNavigationBarItem(
                icon: barItem(context: context, index: 1),
                label: '',
                activeIcon: barItem(context: context, index: 1, isActive: true),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget barItem({
    required BuildContext context,
    required int index,
    bool isActive = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : AppColors.white,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        index == 0
            ? AppImages.assetsIconsDoctors
            : AppImages.assetsIconsSettings,
        height: 20,
        width: 20,
        color: isActive ? AppColors.white : AppColors.secondary,
      ),
    );
  }
}
