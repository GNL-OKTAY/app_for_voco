import 'dart:developer';

import 'package:app_for_voco/feature/auth/service/model/login_response_model.dart';
import 'package:dio/dio.dart';

import '../../model/user_data_model.dart';
import '../contract/auth_datasource_contract.dart';
import '../model/user_login_model.dart';
import '../model/user_register_model.dart';

const baseUrl = "https://reqres.in/api/login";

class ReqResAuthDataSource extends AuthDataSourceContract {
  ReqResAuthDataSource() {
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
      return model;
    } else {
      log('Request failed with status code: ${response.statusCode}');
      return null;
    }
  }

  @override
  Future<void> logout() async {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<UserDataModel?> register({required UserRegisterModel user}) async {
    // TODO: implement register
    throw UnimplementedError();
  }
}
