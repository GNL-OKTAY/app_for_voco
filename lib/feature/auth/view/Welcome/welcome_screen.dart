import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '/core/themes/constants/color_constants.dart';
import 'components/welcome_image.dart';
import 'components/welcome_page_show.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        child: MobileWelcomeScreen(),
      ),
    );
  }
}

class DesktopWelcomeScreen extends StatelessWidget {
  const DesktopWelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 200),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(flex: 2, child: BilgilendirmeMetni()),
            Expanded(
                flex: 2,
                child: Column(children: [
                  SizedBox(height: defaultPadding * 2),
                  WelcomeImage(),
                  SizedBox(height: defaultPadding * 2),
                ])),
          ],
        ),
        const SizedBox(height: 250),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Expanded(
        //         child: Column(children: [
        //       Text(
        //         "Biz Kimiz?",
        //         style: context.general.textTheme.displayLarge,
        //       ),
        //       const SizedBox(height: defaultPadding * 2),
        //       const WelcomeImage2(),
        //       const SizedBox(height: defaultPadding * 2),
        //     ])),
        //     const Expanded(child: BilgilendirmeMetni1()),
        //   ],
        // ),
        // const SizedBox(height: 200),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     const Expanded(child: BilgilendirmeMetni()),
        //     Expanded(
        //         child: Column(children: [
        //       Text("Neler Yapıyoruz?",
        //           style: context.general.textTheme.displayLarge),
        //       const SizedBox(height: defaultPadding * 2),
        //       const WelcomeImage(),
        //       const SizedBox(height: defaultPadding * 2),
        //     ])),
        //   ],
        // ),
        // const SizedBox(height: 200),
        // const Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Expanded(child: BilgilendirmeMetni()),
        //     Expanded(
        //         child: Column(children: [
        //       Text("data"),
        //       SizedBox(height: defaultPadding * 2),
        //       WelcomeImage(),
        //       SizedBox(height: defaultPadding * 2),
        //     ])),
        //   ],
        // ),
        Container(
          width: context.sized.width,
          height: 150,
          color: const Color.fromARGB(255, 0, 102, 165).withOpacity(0.3),
          child: const Center(child: Text("avare tüm hakları saklıdır")),
        )
      ],
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: defaultPadding * 5),
        const SizedBox(height: defaultPadding * 2),
        const WelcomeImage(),
        const SizedBox(height: defaultPadding * 2),
        const BilgilendirmeMetni(),
        const SizedBox(height: 250),
        Column(children: [
          Text(
            "Biz Kimiz?",
            style: context.general.textTheme.displayLarge,
          ),
          const SizedBox(height: defaultPadding * 2),
          const WelcomeImage(),
          const SizedBox(height: defaultPadding * 2),
        ]),
        const BilgilendirmeMetni1(),
        const SizedBox(height: 200),
        Container(
          width: context.sized.width,
          height: 150,
          color: const Color.fromARGB(255, 0, 102, 165).withOpacity(0.3),
          child: const Center(child: Text("avare tüm hakları saklıdır")),
        )
      ],
    );
  }
}
