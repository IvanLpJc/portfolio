import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/custom_app_bar.dart';
import 'package:portfolio/values/constants.dart';

class ContactPage extends StatelessWidget {
  static const String route = StringConst.contactPage;

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        pageSelected: 3,
      ),
      body: const Center(
        child: Text('Contact Page'),
      ),
    );
  }
}
