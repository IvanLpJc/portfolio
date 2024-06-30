import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/background.dart';
import 'package:portfolio/ui/widgets/custom_app_bar.dart';
import 'package:portfolio/values/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';

class AboutPage extends StatelessWidget {
  static const String route = StringConst.aboutPage;
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<String> titles = [
      AppLocalizations.of(context)!.fE,
      AppLocalizations.of(context)!.bE,
      AppLocalizations.of(context)!.fM,
      AppLocalizations.of(context)!.dDBB,
      AppLocalizations.of(context)!.cDP,
      AppLocalizations.of(context)!.sisOs,
      AppLocalizations.of(context)!.tT,
      AppLocalizations.of(context)!.cICD,
      AppLocalizations.of(context)!.pM,
      AppLocalizations.of(context)!.bC,
      AppLocalizations.of(context)!.tT,
      AppLocalizations.of(context)!.aG,
    ];

    final List<String> content = [
      AppLocalizations.of(context)!.frontEnd,
      AppLocalizations.of(context)!.backEnd,
      AppLocalizations.of(context)!.framewroks,
      AppLocalizations.of(context)!.databases,
      AppLocalizations.of(context)!.cDPlatforms,
      AppLocalizations.of(context)!.sOs,
      AppLocalizations.of(context)!.testTools,
      AppLocalizations.of(context)!.ciCdVc,
      AppLocalizations.of(context)!.proM,
      AppLocalizations.of(context)!.blockC,
      AppLocalizations.of(context)!.agile,
      AppLocalizations.of(context)!.aG,
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        pageSelected: 1,
      ),
      body: Stack(
        children: [
          Background(size: size),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeIn(
                    delay: const Duration(seconds: 1),
                    child: Container(
                      height: size.height * 0.3,
                      width: size.width * 0.35,
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
                            AppLocalizations.of(context)!.whoami,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          const Gap(25),
                          Text(AppLocalizations.of(context)!.whoamiP1,
                              style: Theme.of(context).textTheme.displaySmall!),
                          const Gap(25),
                          Text(
                            AppLocalizations.of(context)!.whoamiP2,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeIn(
                    delay: const Duration(seconds: 1),
                    child: Container(
                      height: size.height * 0.6,
                      width: size.width * 0.3,
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
                      child: ListView.builder(
                        itemCount: titles.length,
                        itemBuilder: ((context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "- ${titles[index]}: ${content[index]}",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const Gap(25),
                            ],
                          );
                        }),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}


// - FrontEnd: Dart, HTML, CSS, JS
// - BackEnd: C++, Python, Go
// - Framewroks: Flutter, Django, ReactJS, Express NodeJS, NextJS
// - Databases: MongoDB, MySQL, PostgreSQL, SQLite
// - Cloud Dev Platforms: Firebase, Appwrite
// - Operative Systems: Windows, Linux, MacOS
// - Testing tools: Postman, Jest, TestCafé, Cypress
// - CI/CD and Version Control: Heroku, Jenkins, Render, Vercel, Github Bitbucket
// - Project Management: Jira, Trello, Github Projects
// - Blockchain: Solidity, Infrura, Metamask
// - Agile: SCRUM, Kanban, SAFe