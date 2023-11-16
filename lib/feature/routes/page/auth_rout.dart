import 'package:app_for_voco/feature/auth/view/Login/login_screen.dart';
import 'package:app_for_voco/feature/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRootPage extends ConsumerStatefulWidget {
  const AuthRootPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<AuthRootPage> {
  @override
  Widget build(BuildContext context) {
    checkLoginStatus(
        context); 
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(), 
      ),
    );
  }

  Future<void> checkLoginStatus(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token =
        prefs.getString('token'); 

    if (token != null && token.isNotEmpty) {
      // Eğer token varsa ve boş değilse, kullanıcı daha önce giriş yapmış demektir
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      // Token yoksa veya boşsa, kullanıcı giriş yapmamış demektir
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    }
  }
}
