import 'package:flutter/material.dart';
import 'package:thecocktaildb_app/src/theme/styles.dart';

ThemeData appCustomThemeData(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backGroundBlue,
    textTheme: Theme.of(context).textTheme.copyWith(
          headline1: const TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            height: 1.6,
          ),
          //app bar title
          headline3: const TextStyle(
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
          subtitle1: const TextStyle(
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
          bodyText1: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 1.3,
          ),
          bodyText2: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.3,
          ),
          button: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
  );
}
