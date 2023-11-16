import 'package:flutter/material.dart';

import '../../feature/auth/view/login/login_screen.dart';
import '../../feature/auth_root/auth_root.dart';
import '../../feature/home/screen/home_screen.dart';
import '../../feature/splash/splash_view.dart';
import 'constant/routes.dart';

class NavigationRoute {
  NavigationRoute._();
  static final NavigationRoute _shared = NavigationRoute._();
  static NavigationRoute get shared => _shared;

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case KRoute.homePage:
        return _getRoute(const HomePage());
      // case KRoute.welcomePage:
      //   return _getRoute(const WelcomePage());
      case KRoute.authRootPage:
        return _getRoute(const AuthRootPage());
      case KRoute.loginPage:
        return _getRoute(const LoginScreen());

      // case KRoute.registerPage:
      //   return _getRoute(const RegisterPage());
      // case KRoute.routPage:
      //   return _getRoute(const MainRoutePage());

      case KRoute.splashPage:
        return _getRoute(const SplashPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Center(
                    child: Text(
                      'Root name ${args.name} Not Found.',
                      // style: context.textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }

  PageRoute _getRoute(Widget page) => MaterialPageRoute(
        builder: (context) => page,
      );
}
