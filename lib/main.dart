import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'commons/routes.dart';
import 'commons/theme.dart';

void main() {
  runApp(const MezuriApp());
}

class MezuriApp extends StatefulWidget {
  const MezuriApp({Key? key}) : super(key: key);

  @override
  State<MezuriApp> createState() => _MezuriAppState();
}

class _MezuriAppState extends State<MezuriApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mezuri',
      theme: MezuriTheme.lightTheme,
      darkTheme: MezuriTheme.darkTheme,
      locale: const Locale('es'),
      supportedLocales: L.supportedLocales,
      localizationsDelegates: L.localizationsDelegates,
      initialRoute: MezuriRoutes.initialScreen,
      onGenerateRoute: (RouteSettings? routeSettings) => RouteGenerator.generateRoute(routeSettings),
      debugShowCheckedModeBanner: false,
    );
  }
}