import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      default:
        return PageTransition(
          child: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
    }
  }
}
