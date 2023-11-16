// import 'package:app_for_voco/global/initialize/app_cache.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';



@immutable
class ApplicationStart {
  const ApplicationStart._();
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await DeviceUtility.instance.initPackageInfo();
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );
    
    // FirebaseUIAuth.configureProviders(
    //   [
    //     EmailAuthProvider(),
    //     GoogleProvider(clientId: ''),
    //   ],
    // );
    // await AppChache.instance.setup();
    // initializeDateFormatting(await findSystemLocale());
  }
}
