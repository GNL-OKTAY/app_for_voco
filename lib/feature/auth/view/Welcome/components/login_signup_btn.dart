import 'package:flutter/material.dart';

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
            child: const Text("Login"),
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
          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 0, 102, 165).withOpacity(0.3), elevation: 0),
          child: const Text(
            "Register",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
