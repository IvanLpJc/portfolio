import 'package:animate_do/animate_do.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/ui/widgets/background.dart';
import 'package:portfolio/ui/widgets/carousel.dart';
import 'package:portfolio/ui/widgets/custom_app_bar.dart';
import 'package:portfolio/values/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  static const String route = StringConst.homePage;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        pageSelected: 0,
      ),
      body: Stack(
        children: [
          Background(size: size),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeIn(
                  delay: const Duration(seconds: 1),
                  child: Container(
                      color: Colors.transparent,
                      height: size.height * 0.3,
                      width: size.width * 0.2,
                      child: const Carousel()),
                ),
                FadeIn(
                  delay: const Duration(seconds: 1),
                  child: Container(
                    height: size.height * 0.6,
                    width: size.width * 0.5,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(7, 5),
                          blurRadius: 5,
                          spreadRadius: 10,
                          blurStyle: BlurStyle.outer),
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(5, 5),
                          blurRadius: 8,
                          spreadRadius: 10,
                          blurStyle: BlurStyle.outer),
                    ], borderRadius: BorderRadius.circular(15)),
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.greetings,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(AppLocalizations.of(context)!.me,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 100)),
                        Text(
                          AppLocalizations.of(context)!.poli,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const Gap(100),
                        Text(
                          AppLocalizations.of(context)!.homeDescriptionP1,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const Gap(50),
                        Text(
                          AppLocalizations.of(context)!.homeDescriptionP2,
                          style: Theme.of(context).textTheme.displayMedium,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 50,
            child: Column(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    AppLocalizations.of(context)!.checkOut,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const Gap(10),
                Container(
                  width: 5,
                  height: 75,
                  color: Colors.black,
                ),
                IconButton(
                  splashRadius: 1,
                  onPressed: () {
                    launchUrl(
                        Uri.parse('https://www.linkedin.com/in/ivanlpjc/'));
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 35,
                  ),
                ),
                const Gap(10),
                IconButton(
                  splashRadius: 1,
                  onPressed: () {
                    launchUrl(Uri.parse('https://github.com/IvanLpJc'));
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
