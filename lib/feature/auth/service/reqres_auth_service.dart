import 'dart:developer';

import 'package:app_for_voco/feature/auth/service/model/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_data_model.dart';
import 'contract/auth_datasource_contract.dart';
import 'model/user_login_model.dart';
import 'model/user_register_model.dart';

const baseUrl = "https://reqres.in/api/login";

class ReqResAuthDataService extends AuthServiceContract {
  ReqResAuthDataService() {
    _dio = Dio();
  }
  late final Dio _dio;

  @override
  Future<LoginResponseModel?> login({required LoginRequestModel userModel}) async {
    final response = await _dio.post(
      baseUrl,
      data: userModel.toJson(),
    );

    log("${response.statusCode}");

    if (response.statusCode == 200) {
      log("Login Successful");
      log("$response");

      final model = LoginResponseModel.fromMap(response.data);
      log("Login Successful");
      log(model.toString());
      // Kullanıcı giriş yaptığında tokeni shared preferencesa kaydediyorum
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', model.token.toString());
      return model;
    } else {
      log('Request failed with status code: ${response.statusCode}');
      return null;
    }
  }

  @override
  Future<void> logout() async {}

  @override
  Future<UserDataModel?> register({required UserRegisterModel user}) async {
    return null;
  }
}
