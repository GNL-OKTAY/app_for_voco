import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/navigation/constant/routes.dart';
import '../../navigation_service.dart';
import '../auth/controller/login_token_controller.dart';

class AuthRootPage extends ConsumerStatefulWidget {
  const AuthRootPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<AuthRootPage> {
  @override
  void initState() {
    Future(() async {
      await checkLoginStatus;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<void> get checkLoginStatus async {
    await ref.read(loginTokenController).fetchLoginToken();
    final String? loginToken = ref.watch(loginTokenController).lokenToken;

    if (loginToken != null && loginToken.isNotEmpty) {
      // Eğer token varsa ve boş değilse, kullanıcı daha önce giriş yapmış demektir
      navigator.navigaToClear(path: KRoute.homePage);
    } else {
      // Token yoksa veya boşsa, kullanıcı giriş yapmamış demektir
      navigator.navigaToClear(path: KRoute.loginPage);
    }
  }
}
