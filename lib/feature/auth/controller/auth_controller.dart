import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/custom_error.dart';
import '../../../core/error/result_types/state_result/state_result.dart';
import '../../../injection/injection_container.dart';
import '../model/user_data_model.dart';
import '../service/contract/auth_datasource_contract.dart';
import '../service/model/user_login_model.dart';
import '../service/model/user_register_model.dart';

final authProvider = ChangeNotifierProvider<AuthController>(
  (ref) => getit.get<AuthController>(),
);

class AuthController with ChangeNotifier {
  AuthController({
    required AuthDataSourceContract authDataSource,
  }) {
    _authDataSource = authDataSource;
  }
  late final AuthDataSourceContract _authDataSource;

  StateResult<dynamic> loginState = const StateResult.initial();

  Future<void> login({required LoginRequestModel userModel}) async {
    loginState = const StateResult.loading();
    notifyListeners();

    try {
      final response = await _authDataSource.login(userModel: userModel);
      loginState = StateResult.completed(response);
      notifyListeners();
    } on PlatformException catch (e) {
      loginState = StateResult.failed(CustomFailure(
          message: e.message ?? "Veriler getirilerken bir problem olustu."));
      notifyListeners();
    }
  }

  StateResult<UserDataModel?> registerState = const StateResult.initial();

  Future<void> register({required UserRegisterModel userModel}) async {
    registerState = const StateResult.loading();
    notifyListeners();

    // final response = await _authUseCase.register(userModel: userModel);

    // await response.when(
    //   success: (data) async {
    //     registerState = StateResult.completed(data);
    //     notifyListeners();

    //     // await getit.get<HomeProvider>().checkCurrentUser();
    //   },
    //   failure: (failure) {
    //     registerState = StateResult.failed(failure);
    //     notifyListeners();
    //   },
    // );
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
