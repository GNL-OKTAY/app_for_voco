import 'package:flutter/material.dart';

import '../../constants/colors.dart';

ColorScheme colorSchemeD() {
  return const ColorScheme.dark(
    primary: KThemeColor.greyLight,
    onPrimary: KThemeColor.greyDark,
    shadow: Color.fromARGB(31, 0, 0, 0),
    secondary: Color.fromRGBO(8, 16, 39, 1),
    secondaryContainer: Color.fromARGB(255, 6, 36, 54),
    onSecondaryContainer: Color.fromARGB(255, 18, 21, 73),
    background: Color.fromARGB(255, 36, 36, 36),
  );
}

ColorScheme colorSchemeL() {
  return const ColorScheme.light(
    // primary: Color.fromRGBO(26, 25, 24, 1),
    // primary: Colors.lightBlue,
    primary: Color.fromARGB(255, 233, 233, 233),
    // primary: Color.fromARGB(255, 0, 0, 0),
    onPrimary: KThemeColor.greyDark,
    shadow: Color.fromARGB(33, 24, 22, 22),
    secondary: Color.fromARGB(195, 14, 129, 238),
    onSecondaryContainer: Colors.lightBlue,
    secondaryContainer: Color.fromARGB(255, 22, 84, 143),
    // secondaryContainer: Color.fromARGB(255, 22, 84, 143),
    background: Color.fromARGB(255, 253, 253, 253),

//    onPrimary : Colors.white,
//    primaryContainer:,
//    onPrimaryContainer:,
//    secondary : const Color(0xff03dac6),
//    onSecondary : Colors.black,
//   secondaryContainer:Color(value),
//    onSecondaryContainer:,
//   tertiary:,
//   onTertiary:,
//    tertiaryContainer:,
//    onTertiaryContainer:,
//    error : const Color(0xffb00020),
//    onError : Colors.white,
//    errorContainer:,
//    onErrorContainer:,
//    background : Colors.white,
//    onBackground : Colors.black,
//    surface : Colors.white,
//    onSurface : Colors.black,
//    surfaceVariant:,
//    onSurfaceVariant:,
//    outline:,
//    outlineVariant:,

//    scrim:,
//    inverseSurface:,
//    onInverseSurface:,
//    inversePrimary:,
//    surfaceTint:,
//   //  primaryVariant : const Color(0xff3700b3),
//   //  secondaryVariant : const Color(0xff018786),
  );
}
