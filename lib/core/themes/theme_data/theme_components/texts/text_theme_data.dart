import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

TextTheme textThemeDataLight() => TextTheme(
      //  login sayfası
      //  register sayfası
      displayLarge: GoogleFonts.overpass(
        fontSize: 57,
        color: KThemeColor.darkText,
        fontWeight: FontWeight.bold,
      ),
      // welcome root title
      displayMedium: GoogleFonts.overpass(
        fontSize: 24,
        color: const Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.w900,
      ),
      // homeslider title
      displaySmall: GoogleFonts.overpass(
        fontSize: 20,
        color: KThemeColor.white,
        fontWeight: FontWeight.w800,
      ),
      headlineLarge: GoogleFonts.overpass(
        fontSize: 32,
        color: KThemeColor.darkText,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: GoogleFonts.overpass(
        fontSize: 28,
        color: KThemeColor.darkText,
        fontWeight: FontWeight.w600,
      ),
      // profil setting acont title
      // onboard page
      // welcom p. biligilendirme
      headlineSmall: GoogleFonts.overpass(
        fontSize: 18,
        color: KThemeColor.darkText,
        fontWeight: FontWeight.w500,
      ),

      // search sield
      // Avare button rengi değişen buton yazısı
      titleLarge: GoogleFonts.overpass(
        fontSize: 20,
        color: const Color.fromARGB(255, 240, 240, 240),
        fontWeight: FontWeight.w600,
      ),
      // market info title
      // home ads cart title
      //  profil settings title
      titleMedium: GoogleFonts.overpass(
        fontSize: 18,
        color: KThemeColor.blackPrimary,
        fontWeight: FontWeight.bold,
      ),
      // home top market title
      titleSmall: GoogleFonts.overpass(
        fontSize: 16,
        color: KThemeColor.blackPrimary,
        fontWeight: FontWeight.bold,
      ),
      // home category card title
      bodyLarge: GoogleFonts.overpass(
        fontSize: 15,
        color: KThemeColor.blackPrimary,
        fontWeight: FontWeight.w500,
      ),
      // genel olarka heryerde kullanılıyo değiştirme
      bodyMedium: GoogleFonts.overpass(
        fontSize: 14,
        color: KThemeColor.darkText,
        fontWeight: FontWeight.w400,
      ),
      // market info subtitle
      // home ads cart info
      bodySmall: GoogleFonts.overpass(
        fontSize: 12,
        color: KThemeColor.greyDark,
        fontWeight: FontWeight.w500,
      ),
      //
      labelLarge: GoogleFonts.overpass(
        fontSize: 14,
        color: const Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.w400,
      ),
      // Home slider
      // navigation
      labelMedium: GoogleFonts.overpass(
        fontSize: 12,
        color: KThemeColor.blackDark,
        fontWeight: FontWeight.w400,
      ),
      //homeslider subtitle
      labelSmall: GoogleFonts.overpass(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    );
TextTheme textThemeDataDark() => TextTheme(
      displayLarge: GoogleFonts.overpass(
        fontSize: 57,
        color: KThemeColor.blackLight,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.overpass(
        fontSize: 45,
        color: KThemeColor.blackLight,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.overpass(
        fontSize: 36,
        color: KThemeColor.blackLight,
        fontWeight: FontWeight.w800,
      ),
      headlineLarge: GoogleFonts.overpass(
        fontSize: 32,
        color: KThemeColor.blackLight,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: GoogleFonts.overpass(
        fontSize: 28,
        color: KThemeColor.blackLight,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: GoogleFonts.overpass(
        fontSize: 24,
        color: KThemeColor.blackPrimary,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: GoogleFonts.overpass(
        fontSize: 20,
        color: KThemeColor.greyLighter,
        fontWeight: FontWeight.w600,
      ),
      // home sayfasında ısa yazı
      titleMedium: GoogleFonts.overpass(
        fontSize: 18,
        color: KThemeColor.greyLight,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.overpass(
        fontSize: 16,
        color: KThemeColor.greyLight,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.overpass(
        fontSize: 15,
        color: KThemeColor.greyLight,
        fontWeight: FontWeight.w400,
      ),
      // homeslider ares
      bodyMedium: GoogleFonts.overpass(
        fontSize: 14,
        color: KThemeColor.greyLight,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.overpass(
        fontSize: 12,
        color: KThemeColor.greyLight,
        fontWeight: FontWeight.w500,
      ),
      labelLarge: GoogleFonts.overpass(
        fontSize: 14,
        color: KThemeColor.greyLight,
        fontWeight: FontWeight.w400,
      ),
      // Home categorycart
      labelMedium: GoogleFonts.overpass(
        fontSize: 12,
        color: KThemeColor.greyLight,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: GoogleFonts.overpass(
        fontSize: 11,
        color: KThemeColor.greyLight,
        fontWeight: FontWeight.w400,
      ),
      // headline1: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // headline2: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // headline3: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // headline4: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // headline5: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // headline6: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // subtitle1: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // subtitle2: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // bodyText1: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // bodyText2: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // caption: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // button: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
      // overline: GoogleFonts.overpass(fontSize:,color:KThemeColor.blackDark,fontWeight:,),
    );
