import 'package:avare_market/core/themes/theme_data/color/color.dart';
import 'package:avare_market/core/themes/theme_data/theme_components/texts/text_theme_data.dart';
import 'package:flutter/material.dart';

import '../navigation/constans/app_constants.dart';

/// all custom application theme
class AppTheme {
  /// default application theme
  // static ThemeData get basic => ThemeData(
  //       fontFamily: Font.nunito,
  //       canvasColor: Colors.white,
  //       primarySwatch: Colors.indigo,
  //     );

  // you can add other custom theme in this class like  light theme, dark theme ,etc.

  // example :
  static ThemeData get light => ThemeData(
        fontFamily: Font.nunito,
        canvasColor: Colors.white,
        primarySwatch: Colors.lightBlue,
        textTheme: textThemeDataLight(),
        colorScheme: colorSchemeL(),
      );
  static ThemeData get dark => ThemeData(
        fontFamily: Font.nunito,
        canvasColor: Colors.white,
        primarySwatch: Colors.indigo,
        textTheme: textThemeDataDark(),
        colorScheme: colorSchemeD(),
      );
}
