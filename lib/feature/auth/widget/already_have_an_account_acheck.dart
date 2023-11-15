// import 'package:flutter/material.dart';

// import '../../../core/themes/constants/color_constants.dart';

// class AlreadyHaveAnAccountCheck extends StatelessWidget {
//   final bool login;
//   final Function? press;
//   const AlreadyHaveAnAccountCheck({
//     Key? key,
//     this.login = true,
//     required this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           login ? "LocaleKeys.login_newTo.tr()" : "LocaleKeys.register_AlreadyhAccount",
//           style: const TextStyle(color: kPrimaryColor),
//         ),
//         GestureDetector(
//           onTap: press as void Function()?,
//           child: Text(
//             login ? "LocaleKeys.register_register.tr()" : "LocaleKeys.login_login.tr()",
//             style: const TextStyle(
//               color: kPrimaryColor,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
