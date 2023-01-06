import 'package:flutter/material.dart';
import 'package:thecocktaildb_app/src/data/routes/app_routes.dart';
import 'package:thecocktaildb_app/src/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appCustomThemeData(context),
      initialRoute: AppRoutes.welcome,
      routes: AppRoutes.routes,
    );
  }
}
