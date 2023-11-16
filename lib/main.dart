import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/helpers/language_helper/language_helper.dart';
import 'core/helpers/screen_util_helper/screen_util.dart';
import 'core/navigation/constant/routes.dart';
import 'core/navigation/navigation_route.dart';
import 'core/navigation/navigation_service.dart';
import 'core/themes/theme_data/custom_theme_data.dart';
import 'global/initialize/application_start.dart';

void main() async {
  await ApplicationStart.init();

  runApp(
    LanguageHelper.setupLocales(
      const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilHelper.screenUtilInit(
      MaterialApp(
        title: 'Case Study Voco',
        theme: CustomThemeData.darkTheme,
        initialRoute: KRoute.splashPage,
        onGenerateRoute: NavigationRoute.shared.generateRoute,
        navigatorKey: NavigationService.shared.navigatorKey,
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        scrollBehavior: CustomScrollBehaviour(),
        debugShowCheckedModeBanner: false,
        // home: const LoginScreen(),
      ),
    );
  }
}

class CustomScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
