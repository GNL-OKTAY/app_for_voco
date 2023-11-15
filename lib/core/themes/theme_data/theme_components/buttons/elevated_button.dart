import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

ElevatedButtonThemeData elevatedButtonThemeDataD() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          color: KThemeColor.primaryColor,
          fontWeight: FontWeight.w400,
        ),
        foregroundColor: KThemeColor.iconColorDark,
      ),
    );

ElevatedButtonThemeData elevatedButtonThemeDataL() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          color: KThemeColor.primaryColor,
          fontWeight: FontWeight.w400,
        ),
        foregroundColor: KThemeColor.iconColorLight,
      ),
    );
