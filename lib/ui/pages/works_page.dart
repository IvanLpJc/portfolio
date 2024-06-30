import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/custom_app_bar.dart';
import 'package:portfolio/values/constants.dart';

class WorksPage extends StatelessWidget {
  static const String route = StringConst.experiencePage;
  const WorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        pageSelected: 2,
      ),
      body: const Center(
        child: Text('Works Page'),
      ),
    );
  }
}
