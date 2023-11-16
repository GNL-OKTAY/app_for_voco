// import 'package:app_for_voco/feature/auth/view/Login/login_screen.dart';
// import 'package:app_for_voco/feature/home/home_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../../injection/injection_service.dart';

// class AuthRootPage extends ConsumerStatefulWidget {
//   const AuthRootPage({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _RootPageState();
// }

// class _RootPageState extends ConsumerState<AuthRootPage> {
//   @override
//   Widget build(BuildContext context) {
//     return ref.watch(homeProvider).currentUserState.when(
//       initial: () {
//         return const Center(
//           child: CupertinoActivityIndicator(),
//         );
//       },
//       loading: () {
//         return const Center(
//           child: CupertinoActivityIndicator(),
//         );
//       },
//       completed: (data) {
//         if (data != null) {
//           if (data.id != null) {
//             Injection.uidProvider.setUserId = data.id!;
//           }
//           return const HomePage();
//         } else {
//           return const LoginScreen();
//         }
//       },
//       failed: (failure) {
//         return Text(failure.message);
//       },
//     );
//   }
// }
