// import 'package:avare_market/feature/home/page/home_page.dart';

// import 'package:avare_market/feature/routes/widget/side_bar.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// import '../../../core/helpers/responsive/responsive_builder.dart';

// import '../widget/bottom_navbar.dart';

// class MainRoutePage extends StatefulWidget {
//   const MainRoutePage({super.key});

//   @override
//   State<MainRoutePage> createState() => _MainRoutePageState();
// }

// class _MainRoutePageState extends State<MainRoutePage> {
//   // late DashboardController dashboardController;
//   final scafoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     // dashboardController = Get.put(DashboardController());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scafoldKey,
//       drawer: ResponsiveBuilder.isDesktop(context)
//           ? null
//           : const Drawer(
//               child: SafeArea(
//                 child: SingleChildScrollView(child: BuildSideBar()),
//               ),
//             ),
//       bottomNavigationBar: (ResponsiveBuilder.isDesktop(context) || kIsWeb)
//           ? null
//           : const MobileRootPage(),
//       body: const SafeArea(child: HomePage()),
//     );
//   }
// }
