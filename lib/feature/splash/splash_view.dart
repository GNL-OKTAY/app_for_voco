import 'package:app_for_voco/injection/injection_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      const Duration(seconds: 1),
    ).whenComplete(
      () => navigator.navigaToClear(path: KRoute.authRootPage),
    );
    // ref.read(splashProvider.notifier).checkApplicationVersion(''.version);
  }

  @override
  Widget build(BuildContext context) {
    // listenAndNavigate(splashProvider);
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("avare")
            // Center(
            //     child: SizedBox(
            //         height: 250.h,
            //         width: 250.w,
            //         child: IconConstants.appIconWhite.toImage)),
            SizedBox(
              height: 40.h,
            ),
            const Text("merhaba")
            // WavyBoldText(
            //   title: LocaleKeys.splash_appName.tr(),
            // ),
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
