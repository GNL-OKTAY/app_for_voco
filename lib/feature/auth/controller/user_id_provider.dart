// import 'package:avare_market/injection/injection_container.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final userIdProvider = ChangeNotifierProvider<UserIdProvider>(
//   (ref) => getit.get<UserIdProvider>(),
// );

class UserIdProvider {
  String? _userId;
  String? get getUserId => _userId;
  set setUserId(String userIdToSet) => _userId = userIdToSet;
}
