import 'package:doctor_hunt/app/core/themes/app_colors.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/home/presentation/screens/home_page.dart';
import 'package:doctor_hunt/app/features/home/presentation/screens/see_all_page.dart';
import 'package:flutter/material.dart';

class MainBottomBar extends StatefulWidget {
  const new({super.key});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  final List<Widget> pages = [
    HomePage(),
    SeeAllPage(),
    SeeAllPage(),
    SeeAllPage(),
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
              bottomBarItem(icon: Icons.home_rounded),
              bottomBarItem(icon: Icons.favorite_rounded),
              bottomBarItem(icon: Icons.menu_book_rounded),
              bottomBarItem(icon: Icons.settings_rounded),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomBarItem({required IconData icon}) {
    return BottomNavigationBarItem(
      activeIcon: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primary,
        ),
        child: Icon(icon, color: AppColors.white, size: 25),
      ),
      icon: Icon(icon, color: AppColors.secondary, size: 25),
      label: '',
    );
  }
}
