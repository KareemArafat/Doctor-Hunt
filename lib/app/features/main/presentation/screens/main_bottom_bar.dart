import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/home/presentation/screens/home_page.dart';
import 'package:doctor_hunt/app/shared/functions/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainBottomBar extends StatefulWidget {
  const new({super.key});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  final List<Widget> pages = [
    HomePage(),
    SafeArea(child: SizedBox()),
    SafeArea(child: SizedBox()),
    SafeArea(child: SizedBox()),
  ];
  int currentIndex = 0;

  void onTap(int value) => setState(() => currentIndex = value);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      withPadding: currentIndex == 0,
      body: pages[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: BottomNavigationBar(
            backgroundColor: AppColors.white,
            currentIndex: currentIndex,
            selectedFontSize: 0,
            onTap: onTap,
            items: [
              bottomBarItem(icon: FontAwesomeIcons.solidHouse.data),
              bottomBarItem(icon: FontAwesomeIcons.solidHeart.data),
              bottomBarItem(icon: FontAwesomeIcons.bookOpen.data),
              bottomBarItem(icon: FontAwesomeIcons.userGear.data),
            ],
          ),
        ),
      ),
    );
  }
}
