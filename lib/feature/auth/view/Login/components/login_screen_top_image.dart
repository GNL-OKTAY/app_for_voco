import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/themes/constants/color_constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lottieFile = Lottie.asset('assets/lotti/Animation.json');

    return Column(
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
    );
  }
}
