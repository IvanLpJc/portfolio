import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/ui/pages/pages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int pageSelected;

  CustomAppBar({
    super.key,
    required this.pageSelected,
  });

  final List<Icon> theme = [
    const Icon(Icons.light_mode_outlined),
    const Icon(Icons.dark_mode_outlined)
  ];

  final Map<String, String> language = {
    'es': 'Español',
    'en': 'English',
  };

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      toolbarHeight: 100,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInDown(
            child: ElevatedButton(
              style: pageSelected == 0
                  ? OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.amber))
                  : null,
              onPressed: () {
                Navigator.pushNamed(context, HomePage.route);
              },
              child: SizedBox(
                width: 200,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppLocalizations.of(context)!.home,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            ),
          ),
          const Gap(15),
          FadeInDown(
            delay: const Duration(milliseconds: 250),
            child: ElevatedButton(
                style: pageSelected == 1
                    ? OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.amber))
                    : null,
                onPressed: () {
                  Navigator.pushNamed(context, AboutPage.route);
                },
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.about,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                )),
          ),
          const Gap(15),
          FadeInDown(
            delay: const Duration(milliseconds: 500),
            child: ElevatedButton(
                style: pageSelected == 2
                    ? OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.amber))
                    : null,
                onPressed: () {
                  Navigator.pushNamed(context, WorksPage.route);
                },
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.experience,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                )),
          ),
          const Gap(15),
          FadeInDown(
            delay: const Duration(milliseconds: 750),
            child: ElevatedButton(
                style: pageSelected == 3
                    ? OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.amber))
                    : null,
                onPressed: () {
                  Navigator.pushNamed(context, ContactPage.route);
                },
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.contact,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                )),
          ),
        ],
      ),
      // actions: [
      //   IconButton(
      //     icon: const Icon(Icons.settings),
      //     onPressed: () {
      //       showDialog(
      //           context: context,
      //           builder: (context) => Dialog(
      //                 child: SizedBox(
      //                   width: 250,
      //                   height: 250,
      //                   child: Column(children: [
      //                     Row(
      //                       children: [
      //                         Text(AppLocalizations.of(context)!.lightMode),
      //                         ToggleButtons(
      //                           direction: Axis.horizontal,
      //                           onPressed: (int index) {},
      //                           borderRadius:
      //                               const BorderRadius.all(Radius.circular(8)),
      //                           selectedBorderColor: Colors.blue[700],
      //                           selectedColor: Colors.white,
      //                           fillColor: Colors.blue[200],
      //                           color: Colors.blue[400],
      //                           isSelected: const [true, false],
      //                           children: theme,
      //                         ),
      //                         Text(AppLocalizations.of(context)!.darkMode),
      //                       ],
      //                     ),
      //                     const Row(
      //                       children: [],
      //                     )
      //                   ]),
      //                 ),
      //               ));
      //     },
      //   ),
      //   const Gap(40),
      // ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
