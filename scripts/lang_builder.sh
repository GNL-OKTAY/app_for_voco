$sh scripts/lang_builder.sh
flutter pub run easy_localization:generate -S "assets/translations" -O "lib/core/localization" -o "locale_keys.g.dart" -f keys
flutter pub run easy_localization:generate -S "assets/translations" -O "lib/core/localization"

dart run easy_localization:generate -S "assets/translations" -O "lib/core/localization" -o "locale_keys.g.dart" -f keys
dart run easy_localization:generate -S "assets/translations" -O "lib/core/localization"