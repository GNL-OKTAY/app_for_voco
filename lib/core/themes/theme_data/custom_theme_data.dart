import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'color/color.dart';

class CustomThemeData {
  const CustomThemeData._();

  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        primaryColor: KThemeColor.primaryColor,
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20),
        colorScheme: colorSchemeD(),
        // bottomNavigationBarTheme: bottomNavBarThemeDataD(),
        // elevatedButtonTheme: elevatedButtonThemeDataD(),
        // appBarTheme: appBarThemeDataD(),
        // iconTheme: iconThemeDataD(),
        // textTheme: textThemeDataDark(),
        // inputDecorationTheme: inputDecorationD(),
      );

  static ThemeData get lightTheme => ThemeData.light().copyWith(
        primaryColor: KThemeColor.primaryColor,
        splashColor: KThemeColor.transparent,
        scaffoldBackgroundColor: const Color.fromARGB(255, 244, 244, 244),
        colorScheme: colorSchemeL(),
        // bottomNavigationBarTheme: bottomNavBarThemeDataL(),
        // elevatedButtonTheme: elevatedButtonThemeDataL(),
        // appBarTheme: appBarThemeDataL(),
        // iconTheme: iconThemeDataL(),
        // textTheme: textThemeDataLight(),
        // inputDecorationTheme: inputDecorationL(),
      );
}
