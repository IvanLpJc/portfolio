import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/shared_preferences/preferences.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisplayTheme extends StatefulWidget {
  const DisplayTheme({
    super.key,
    required this.nextWidget,
  });

  final Function(int) nextWidget;

  @override
  State<DisplayTheme> createState() => _DisplayThemeState();
}

class _DisplayThemeState extends State<DisplayTheme> {
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
                      child: Text(
                    AppLocalizations.of(context)!.displayModeP1,
                    style: const TextStyle(fontSize: 75),
                  ))),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: FadeInLeft(
                      delay: const Duration(milliseconds: 750),
                      child: Text(AppLocalizations.of(context)!.displayModeP2,
                          style: const TextStyle(fontSize: 75)))),
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
                    Preferences.isDarkmode = false;
                    //Necesitamos el provider para que se redibujen los widgets
                    final themeProvider =
                        Provider.of<ThemeProvider>(context, listen: false);

                    themeProvider.setLightMode();
                    setState(() {});
                    widget.nextWidget(2);
                  },
                  child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Text(AppLocalizations.of(context)!.lightMode,
                          style: const TextStyle(fontSize: 40))),
                )),
            const Gap(50),
            FadeInUp(
                delay: const Duration(seconds: 1),
                child: ElevatedButton(
                  onPressed: () {
                    Preferences.isDarkmode = true;
                    final themeProvider =
                        Provider.of<ThemeProvider>(context, listen: false);

                    themeProvider.setDarkMode();
                    setState(() {});
                    widget.nextWidget(2);
                  },
                  child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Text(AppLocalizations.of(context)!.darkMode,
                          style: const TextStyle(fontSize: 40))),
                )),
          ],
        ),
      ],
    );
  }
}
