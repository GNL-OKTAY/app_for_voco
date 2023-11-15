import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
class ScreenUtilHelper {
  const ScreenUtilHelper._();

  static Future<void> ensureInitialized() async {
    await ScreenUtil.ensureScreenSize();
  }

//TODO:  Tasarımdaki boyutları gir telefonun yüksekliğini buraya gir.
// final with = MediaQuery.of(context).size.width;
  static ScreenUtilInit screenUtilInit(MaterialApp materialApp) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return ScreenUtilInit(
        designSize: const Size(412, 869),
        splitScreenMode: true,
        builder: (context, child) => materialApp,
      );
      // Android specific code
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return ScreenUtilInit(
        designSize: const Size(430, 932),
        splitScreenMode: true,
        builder: (context, child) => materialApp,
      );
      //iOS specific code
    } else {
      //web or desktop specific code
      return ScreenUtilInit(
        designSize: const Size(1660, 1024),
        splitScreenMode: true,
        builder: (context, child) => materialApp,
      );
    }
  }
}
