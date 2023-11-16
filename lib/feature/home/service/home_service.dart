import 'dart:developer';

import 'package:dio/dio.dart';

import '../../auth/model/user_data_model.dart';

const loginUrl = "https://reqres.in/api/login";
const userListUrl = "https://reqres.in/api/users?page=2";

class ReqResHomeDataSource {
  ReqResHomeDataSource() {
    _dio = Dio();
  }
  late final Dio _dio;

  Future<dynamic> fetchUserList() async {
    final response = await _dio.get(userListUrl);

    log("${response.statusCode}");

    if (response.statusCode == 200) {
      log(" Successful");
      print("$response");
      final modellist = (response.data["data"] as List).map((e) => UserDataModel.fromMap(e)).toList();

      return modellist;
      // final model = UserDataModel.fromJson(jsonDecode(response.data));
      // log(" Successful");
      // log(model.toString());
      // return model;
    } else {
      log('Request failed with status code: ${response.statusCode}');
      return null;
    }
  }

  Future<UserDataModel?> checkCurrentUser() async {
    return null;

    // final response = await _dio.post(
    //   baseUrl,
    //   data: userModel.toJson(),
    // );

    // log("${response.statusCode}");

    // if (response.statusCode == 200) {
    //   log("Login Successful");
    //   log("$response");

    //   final model = LoginResponseModel.fromMap(response.data);
    //   log("Login Successful");
    //   log(model.toString());
    //   return model;
    // } else {
    //   log('Request failed with status code: ${response.statusCode}');
    //   return null;
    // }
  }
}

enum QueryParameters { fetchUserList, fetchUserListlogin }

extension EasyString on String {}
