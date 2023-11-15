import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result_types/state_result/state_result.dart';

import '../../../injection/injection_container.dart';

import '../data/model/user_login_model.dart';
import '../data/model/user_register_model.dart';
import '../domain/usecases/auth_usecase.dart';
import '../model/user_data_model.dart';

final authProvider = ChangeNotifierProvider<AuthProvider>(
  (ref) => getit.get<AuthProvider>(),
);

class AuthProvider with ChangeNotifier {
  AuthProvider({
    required AuthUseCase authUseCase,
  }) {
    _authUseCase = authUseCase;
  }
  late final AuthUseCase _authUseCase;

  StateResult<dynamic> loginState = const StateResult.initial();

  Future<void> login({required UserLoginModel userModel}) async {
    loginState = const StateResult.loading();
    notifyListeners();

    final response = await _authUseCase.login(userModel: userModel);

    response.when(
      success: (data) {
        loginState = StateResult.completed(data);
        notifyListeners();
        // mobil uygulama mı yoksa web mi olduğunu bu sayfasda kontrol edecek
        // navigator.navigaToClear(path: KRoute.routPage);
      },
      failure: (failure) {
        loginState = StateResult.failed(failure);
        notifyListeners();
      },
    );
  }

  StateResult<UserDataModel?> registerState = const StateResult.initial();

  Future<void> register({required UserRegisterModel userModel}) async {
    registerState = const StateResult.loading();
    notifyListeners();

    final response = await _authUseCase.register(userModel: userModel);

    await response.when(
      success: (data) async {
        registerState = StateResult.completed(data);
        notifyListeners();

        // await getit.get<HomeProvider>().checkCurrentUser();
      },
      failure: (failure) {
        registerState = StateResult.failed(failure);
        notifyListeners();
      },
    );
  }

  StateResult<dynamic> logoutState = const StateResult.initial();

  // Future<void> logout(HomeProvider homeProvider) async {
  //   logoutState = const StateResult.loading();
  //   notifyListeners();

  //   final response = await _authUseCase.logout();

  //   await response.when(
  //     success: (data) async {
  //       logoutState = StateResult.completed(data);
  //       await homeProvider.checkCurrentUser();
  //       notifyListeners();
  //     },
  //     failure: (failure) {
  //       logoutState = StateResult.failed(failure);
  //       notifyListeners();
  //     },
  //   );
  // }
}
