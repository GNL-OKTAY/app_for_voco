import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/colors.dart';

AppBarTheme appBarThemeDataD() {
  return const AppBarTheme(
    backgroundColor: KThemeColor.transparent,
    iconTheme: IconThemeData(color: KThemeColor.iconBackground, grade: 0),
    elevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: 'overpass',
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: 0.4,
      height: 0.9,
      color: KThemeColor.lightText,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}

AppBarTheme appBarThemeDataL() {
  return const AppBarTheme(
    backgroundColor: KThemeColor.transparent,
    iconTheme: IconThemeData(color: KThemeColor.iconBackground, grade: 0),
    elevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: 'overpass',
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: 0.4,
      height: 0.9,
      color: KThemeColor.lightText,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}
