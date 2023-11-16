import 'package:app_for_voco/feature/auth/service/model/login_response_model.dart';

import '../../model/user_data_model.dart';
import '../model/user_login_model.dart';
import '../model/user_register_model.dart';

abstract class AuthServiceContract {
  Future<LoginResponseModel?> login({required LoginRequestModel userModel});

  Future<void> logout();
  Future<UserDataModel?> register({required UserRegisterModel user});
}
