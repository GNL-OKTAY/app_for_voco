import 'package:app_for_voco/core/themes/constants/color_constants.dart';
import 'package:app_for_voco/injection/injection_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../core/navigation/constant/routes.dart';

// import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future<dynamic>.delayed(
      const Duration(seconds: 3),
    ).whenComplete(
      () => navigator.navigaToClear(path: KRoute.authRootPage),
    );
    // ref.read(splashProvider.notifier).checkApplicationVersion(''.version);
  }

  @override
  Widget build(BuildContext context) {
    final lottieFile = Lottie.asset('assets/lotti/AnimationHello.json');
    // listenAndNavigate(splashProvider);
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: defaultPadding * 4),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 8,
                  child: lottieFile,
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: defaultPadding * 5),
          ],
        ),
      ),
    );
  }
}

// mixin _SplashViewListenMixen on ConsumerState<SplashPage> {
//   void listenAndNavigate(
//     StateNotifierProvider<SplashProvider, SplashState> provider,
//   ) {
//     ref.listen(
//       provider,
//       (previous, next) {
//         if (next.isRequiredForceUpdate ?? false) {
//           showAboutDialog(context: context);
//           return;
//         }
//         if (next.isRedirectHome != null) {
//           if (next.isRedirectHome!) {
//             context.navigateToPage(const RootPage());
//           }
//         }
//       },
//     );
//   }
// }
