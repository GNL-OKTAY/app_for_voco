// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

enum IconConstants {
  microphone('microphone'),
  appIcon('app_logo'),
  ;

  final String value;
  const IconConstants(this.value);
  String get toPng => 'assets/icon/ic_$value.png';
  Image get toImage => Image.asset(toPng);
}
