// import 'dart:html';
// import 'dart:ui_web' as ui;
import 'dart:ui';

import 'package:app_for_voco/core/helpers/language_helper/language_helper.dart';
import 'package:app_for_voco/feature/auth/view/Login/login_screen.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/helpers/screen_util_helper/screen_util.dart';
import 'package:flutter/material.dart';

import 'global/initialize/app_theme.dart';
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
        theme: AppTheme.theme,
        // initialRoute: KRoute.splashPage,
        // onGenerateRoute: NavigationRoute.shared.generateRoute,
        // navigatorKey: NavigationService.shared.navigatorKey,
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        scrollBehavior: CustomScrollBehaviour(),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
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
