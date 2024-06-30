import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:portfolio/configure_web.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/shared_preferences/preferences.dart';
import 'package:portfolio/ui/pages/pages.dart';
import 'package:portfolio/ui/routes/routes.dart';
import 'package:portfolio/values/constants.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  configureApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(
        isDarkmode: Preferences.isDarkmode,
      ),
    ),
    ChangeNotifierProvider(
      create: (_) => LanguageProvider(locale: Preferences.locale),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final locale = Provider.of<LanguageProvider>(context).currentLocale;
    return Layout(
      child: MaterialApp(
        title: StringConst.appTitle,
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).currentTheme,
        initialRoute: IntroPage.route,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: locale,
        // home: const IntroPage(),
      ),
    );
  }
}
