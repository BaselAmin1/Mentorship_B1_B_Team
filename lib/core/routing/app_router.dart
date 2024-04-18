import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:space_x/core/routing/routes.dart';
import 'package:space_x/features/home/ui/home_screen.dart';
import 'package:space_x/features/rockets/presentation/views/rocket_view.dart';
import 'package:space_x/features/rockets/presentation/views/rockets_details_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.kRocketView:
        return PageTransition(
            child: const RocketsView(),
            type: PageTransitionType.fade,
            duration: const Duration(
              milliseconds: 200,
            ),
            settings: settings);
      case Routes.kRocketDetailsView:
        return PageTransition(
          child: const RocketDetailsView(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );

      case Routes.homeScreen:
        return PageTransition(
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
          child: const HomeScreen(),
        );
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
