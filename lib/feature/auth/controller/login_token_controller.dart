import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/error/custom_error.dart';
import '/core/error/result_types/state_result/state_result.dart';
import '../service/login_token_service.dart';

final loginTokenController = ChangeNotifierProvider<LoginTokenController>(
  (ref) => LoginTokenController.shared,
);

class LoginTokenController with ChangeNotifier {
  LoginTokenController._();

  static final shared = LoginTokenController._();
  final _loginTokenService = LoginTokenService.shared;

  String? lokenToken;

  StateResult<String?> loginTokenState = const StateResult.initial();

  Future<void> fetchLoginToken() async {
    loginTokenState = const StateResult.loading();
    notifyListeners();

    try {
      final response = await _loginTokenService.fetchLoginToken();
      lokenToken = response;
      loginTokenState = StateResult.completed(response);
      notifyListeners();
    } on PlatformException catch (e) {
      loginTokenState = StateResult.failed(CustomFailure(message: e.message ?? "Token getirilirken problem olustu."));
      notifyListeners();
    }
  }

  Future<void> deleteLoginToken() async {
    loginTokenState = const StateResult.loading();
    notifyListeners();

    await _loginTokenService.deleteLoginToken();

    try {
      loginTokenState = const StateResult.completed(null);
      notifyListeners();
    } on PlatformException catch (e) {
      loginTokenState = StateResult.failed(CustomFailure(message: e.message ?? "Token getirilirken problem olustu."));
      notifyListeners();
    }
  }
}
