import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/localization/locale_keys.g.dart';
import '../../Login/login_screen.dart';
import '../../Register/signup_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Hero(
          tag: "mobile_app",
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Uygulamayı al".toUpperCase(),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Hero(
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
            child: Text(
              LocaleKeys.login_login.tr().toUpperCase(),
            ),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SignUpScreen();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              backgroundColor:
                  const Color.fromARGB(255, 0, 102, 165).withOpacity(0.3),
              elevation: 0),
          child: Text(
            LocaleKeys.register_register.tr().toUpperCase(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
