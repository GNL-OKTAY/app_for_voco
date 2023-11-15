import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

InputDecorationTheme inputDecorationD() {
  return InputDecorationTheme(
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(0, 255, 255, 255),
      ),
    ),
    disabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
    ),
    hintStyle: GoogleFonts.poppins(
      color: KThemeColor.greyPrimary,
      fontSize: 15,
      fontWeight: FontWeight.lerp(
        FontWeight.w400,
        FontWeight.w400,
        0,
      ),
    ),
    helperStyle: GoogleFonts.poppins(
      color: const Color.fromARGB(255, 255, 149, 0).withOpacity(0.4),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
}

InputDecorationTheme inputDecorationL() {
  return InputDecorationTheme(
    disabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(0, 88, 60, 60)),
    ),
    errorStyle: const TextStyle(fontSize: 10),
    hintStyle: GoogleFonts.poppins(
      color: KThemeColor.darkText,
      fontSize: 15,
      fontWeight: FontWeight.lerp(
        FontWeight.w400,
        FontWeight.w400,
        0,
      ),
    ),
    helperStyle: GoogleFonts.poppins(
      color: const Color.fromARGB(255, 255, 149, 0).withOpacity(0.4),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(
        color: Colors.indigo,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(
        color: Colors.cyan,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
  );
}
