import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/shared_preferences/preferences.dart';
import 'package:provider/provider.dart';

class Language extends StatelessWidget {
  const Language({
    super.key,
    required this.nextWidget,
  });

  final Function(int) nextWidget;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * 0.35,
          height: size.height * 0.15,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  child: FadeInLeft(
                      child: const Text(
                    'WHICH LANGUAGE',
                    style: TextStyle(fontSize: 80),
                  ))),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: FadeInLeft(
                      delay: const Duration(milliseconds: 750),
                      child: const Text('DO YOU PREFER?',
                          style: TextStyle(fontSize: 80)))),
            ],
          ),
        ),
        const Gap(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInUp(
                delay: const Duration(seconds: 1),
                child: ElevatedButton(
                  onPressed: () {
                    Preferences.language = 'en';
                    final provider =
                        Provider.of<LanguageProvider>(context, listen: false);
                    provider.currentLocale = Preferences.locales['en']!;
                    nextWidget(1);
                  },
                  child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: const Text('ENGLISH',
                          style: TextStyle(fontSize: 40))),
                )),
            const Gap(50),
            FadeInUp(
                delay: const Duration(seconds: 1),
                child: ElevatedButton(
                  onPressed: () {
                    Preferences.language = 'es';
                    final provider =
                        Provider.of<LanguageProvider>(context, listen: false);
                    provider.currentLocale = Preferences.locales['es']!;
                    nextWidget(1);
                  },
                  child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: const Text('ESPAÑOL',
                          style: TextStyle(fontSize: 40))),
                )),
          ],
        ),
      ],
    );
  }
}
