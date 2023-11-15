import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

BottomNavigationBarThemeData bottomNavBarThemeDataD() =>
    BottomNavigationBarThemeData(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      selectedIconTheme: const IconThemeData(
        color: KThemeColor.iconColorDark,
        size: 33,
      ),
      unselectedIconTheme: const IconThemeData(
        color: KThemeColor.iconColorDarkUs,
        size: 25,
      ),
      selectedLabelStyle: GoogleFonts.poppins(
        color: KThemeColor.iconColorDark,
        fontSize: 13,
      ),
      unselectedItemColor: KThemeColor.iconColorDarkUs,
      unselectedLabelStyle: GoogleFonts.poppins(
        color: KThemeColor.iconColorDarkUs,
        fontSize: 13,
      ),
      selectedItemColor: KThemeColor.iconColorDark,
    );

BottomNavigationBarThemeData bottomNavBarThemeDataL() =>
    BottomNavigationBarThemeData(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      selectedIconTheme: const IconThemeData(
        color: KThemeColor.iconColorLight,
        size: 33,
      ),
      unselectedIconTheme: const IconThemeData(
        color: KThemeColor.iconColorLightUs,
        size: 25,
      ),
      selectedLabelStyle: GoogleFonts.poppins(
        color: KThemeColor.iconColorLight,
        fontSize: 13,
      ),
      unselectedItemColor: KThemeColor.iconColorLightUs,
      unselectedLabelStyle: GoogleFonts.poppins(
        color: KThemeColor.iconColorLightUs,
        fontSize: 13,
      ),
      selectedItemColor: KThemeColor.iconColorLight,
    );
