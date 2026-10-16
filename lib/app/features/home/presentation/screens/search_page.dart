import 'package:doctor_hunt/app/core/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/app/core/widgets/custom_scaffold.dart';
import 'package:doctor_hunt/generated/strings.g.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(children: [CustomAppBar(title: t.findDoctors)]),
    );
  }
}
