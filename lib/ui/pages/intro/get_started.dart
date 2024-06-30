import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/ui/pages/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({
    super.key,
  });

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
                    AppLocalizations.of(context)!.welcome,
                    style: const TextStyle(fontSize: 80),
                  ))),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: FadeInLeft(
                      delay: const Duration(milliseconds: 750),
                      child: Text(AppLocalizations.of(context)!.portfolio,
                          style: const TextStyle(fontSize: 80)))),
            ],
          ),
        ),
        const Gap(30),
        FadeInUp(
            delay: const Duration(seconds: 1),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, HomePage.route);
              },
              child: Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Text(AppLocalizations.of(context)!.start,
                      style: const TextStyle(fontSize: 40))),
            )),
      ],
    );
  }
}

/*
Valores pantalla grande:
Texto -> 75
width -> *0.4,
height => *0.15


*/