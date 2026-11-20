import 'package:doctor_hunt/app/core/router/app_router.dart';
import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_button.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/admin/presentation/controllers/user_model_cubit/user_model_cubit.dart';
import 'package:doctor_hunt/app/features/admin/presentation/screens/admin_doctors_page.dart';
import 'package:doctor_hunt/app/features/settings/presentation/screens/settings_page.dart';
import 'package:doctor_hunt/app/shared/functions/bottom_bar_item.dart';
import 'package:doctor_hunt/generated/app_styles.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdminMainBottomBar extends StatefulWidget {
  const new({super.key});

  @override
  State<AdminMainBottomBar> createState() => _AdminMainBottomBarState();
}

class _AdminMainBottomBarState extends State<AdminMainBottomBar> {
  int currentIndex = 0;
  final List<Widget> pages = const [
    AdminDoctorsPage(),
    SettingsPage(),
    AdminDoctorsPage(),
  ];

  @override
  void initState() {
    super.initState();
    context.read<UserModelCubit>().getUserModel();
  }

  void onTab(int index) => setState(() => currentIndex = index);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: pages[currentIndex],
      floatingActionButton: currentIndex == 0
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
            type: BottomNavigationBarType.shifting,
            currentIndex: currentIndex,
            onTap: onTab,
            backgroundColor: AppColors.white,
            selectedFontSize: 0,
            items: [
              bottomBarItem(icon: FontAwesomeIcons.stethoscope.data),
              bottomBarItem(icon: FontAwesomeIcons.bookOpen.data),
              bottomBarItem(icon: FontAwesomeIcons.gear.data),
            ],
          ),
        ),
      ),
    );
  }
}
