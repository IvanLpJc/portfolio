import 'package:flutter/material.dart';
import 'package:portfolio/ui/pages/intro/get_started.dart';
import 'package:portfolio/ui/pages/intro/language.dart';
import 'package:portfolio/ui/pages/intro/display_mode.dart';
import 'package:portfolio/values/constants.dart';

class IntroPage extends StatefulWidget {
  static const String route = StringConst.splashPage;
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int _selectedWidget = 0;

  changeWidget(int next) {
    _selectedWidget = next;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> children = [
      Language(nextWidget: changeWidget),
      DisplayTheme(nextWidget: changeWidget),
      const GetStarted(),
    ];
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: children[_selectedWidget],
        ),
      ),
    );
  }
}
