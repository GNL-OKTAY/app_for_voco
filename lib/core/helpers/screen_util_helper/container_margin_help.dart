// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

@immutable
class KTMargins {
  const KTMargins._();
  static const EdgeInsetsGeometry marginAll_10 = EdgeInsets.all(10);

  static const EdgeInsetsGeometry marginTop_10 = EdgeInsets.only(top: 10);
  static const EdgeInsetsGeometry marginTop_20 = EdgeInsets.only(top: 20);

  static const EdgeInsetsGeometry marginVertTB_10 =
      EdgeInsets.symmetric(vertical: 10);
}

@immutable
class KTPadding {
  const KTPadding._();
  static const EdgeInsetsGeometry paddingAll_8 = EdgeInsets.all(8);
  static const EdgeInsetsGeometry paddingTop_20 = EdgeInsets.only(top: 20);
  // normal peding
  static const EdgeInsetsGeometry paddingAll_20 = EdgeInsets.all(20);
}

@immutable
class KTBorderR {
  const KTBorderR._();
  static BorderRadius borderRCir_20 = BorderRadius.circular(20);
}
