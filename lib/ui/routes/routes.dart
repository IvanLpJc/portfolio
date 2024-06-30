import 'package:flutter/material.dart';
import 'package:portfolio/ui/pages/pages.dart';

typedef PathWidgetBuilder = Widget Function(BuildContext, String?);

class Path {
  const Path(this.pattern, this.builder);

  final String pattern;

  final PathWidgetBuilder builder;
}

class RouteConfiguration {
  static List<Path> paths = [
    Path(r'^' + AboutPage.route, (context, matches) => const AboutPage()),
    Path(r'^' + CertificationsPage.route,
        (context, matches) => const CertificationsPage()),
    Path(r'^' + ContactPage.route, (context, matches) => const ContactPage()),
    Path(r'^' + HomePage.route, (context, matches) => const HomePage()),
    Path(r'^' + WorksPage.route, (context, matches) => const WorksPage()),
    Path(r'^' + IntroPage.route, (context, matches) => const IntroPage()),
  ];

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    for (Path path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name!)) {
        final firstMatch = regExpPattern.firstMatch(settings.name!);
        final match =
            (firstMatch?.groupCount == 1) ? firstMatch?.group(1) : null;
        return NoAnimationMaterialPageRoute<void>(
          builder: (context) => path.builder(context, match),
          settings: settings,
        );
        // return PageRouteBuilder(
        //     transitionDuration: const Duration(milliseconds: 600),
        //     settings:
        //         settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        //     pageBuilder: (context, __, ___) => path.builder(context, match),
        //     transitionsBuilder: (_, a, __, c) =>
        //         FadeTransition(opacity: a, child: c));
      }
    }

    // If no match is found, [WidgetsApp.onUnknownRoute] handles it.
    return null;
  }
}

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
