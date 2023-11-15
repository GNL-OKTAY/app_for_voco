// import 'package:flutter/material.dart';
// import 'package:kartal/kartal.dart';

// class Background extends StatelessWidget {
//   final Widget child;
//   final Widget? childAppbar;
//   const Background({
//     Key? key,
//     required this.child,
//     this.topImage = "assets/images/main_top.png",
//     this.bottomImage = 'assets/icon/ic_app_logo_blue.png',
//     this.childAppbar,
//   }) : super(key: key);

//   final String topImage, bottomImage;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           elevation: 0,
//           flexibleSpace: Padding(
//             padding:
//                 const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
//             child: childAppbar,
//           )),
//       resizeToAvoidBottomInset: false,
//       body: SizedBox(
//         width: double.infinity,
//         height: MediaQuery.of(context).size.height,
//         child: Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             // Positioned(
//             //   top: 0,
//             //   left: 0,
//             //   child: Image.asset(
//             //     topImage,
//             //     width: 120,
//             //   ),
//             // ),
//             Positioned(
//               bottom: 0,
//               left: 0,
//               child: ColorFiltered(
//                 colorFilter: ColorFilter.mode(
//                   const Color.fromARGB(255, 0, 102, 165).withOpacity(
//                       0.3), // Buradaki 0.5 şeffaflık seviyesini temsil eder
//                   BlendMode.srcIn,
//                 ),
//                 child: Image.asset(
//                   bottomImage,
//                   width: context.sized.width / 2,
//                   // opacity: const AlwaysStoppedAnimation<double>(250)
//                 ),
//               ),
//             ),
//             SafeArea(child: child),
//           ],
//         ),
//       ),
//     );
//   }
// }
