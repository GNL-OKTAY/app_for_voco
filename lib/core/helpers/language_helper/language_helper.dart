import '../../../../core/localization/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
class LanguageHelper {
  const LanguageHelper._();

  static Widget setupLocales(Widget widget) {
    return EasyLocalization(
      assetLoader: const CodegenLoader(),
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: widget,
    );
  }
}
