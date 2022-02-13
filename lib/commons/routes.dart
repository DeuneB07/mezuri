import 'package:flutter/material.dart';

import '../views/initial/initial_screen.dart';

abstract class MezuriRoutes {
  static const initialScreen = '/';
  static const usersScreen = '/users';
}

abstract class RouteGenerator {
  static Route? generateRoute(RouteSettings? settings) {
    String? route = settings?.name;

    switch (route) {
      case MezuriRoutes.initialScreen:
        return AnimatedPageSlider.bottomToTopSlider(const InitialScreen());

      case MezuriRoutes.usersScreen:
        return MaterialPageRoute(builder: (_) => const InitialScreen());

      default:
        return null;
    }
  }
}

abstract class AnimatedPageSlider {
  static Route bottomToTopSlider(Widget screen, {RouteSettings? settings}) {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
        return screen;
      },
      transitionsBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation, Widget child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation = CurvedAnimation(
          parent: animation as Animation<double>,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}
