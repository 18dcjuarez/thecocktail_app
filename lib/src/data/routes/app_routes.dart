import 'package:flutter/material.dart';
import 'package:thecocktaildb_app/src/pages/welcome/welcome_page.dart';

class AppRoutes {
  static const welcome = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    welcome: (BuildContext context) => const WelcomePage(),
  };

  static Widget routeNameToWidget(String routeName) {
    switch (routeName) {
      case welcome:
        return const WelcomePage();
      default:
        return const WelcomePage();
    }
  }
}
