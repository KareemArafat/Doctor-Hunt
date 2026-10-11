import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/app/features/home/presentation/screens/see_all_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [SeeAllPage(), SeeAllPage(), SeeAllPage(), SeeAllPage()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
