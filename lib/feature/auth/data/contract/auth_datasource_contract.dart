import '../../model/user_data_model.dart';
import '../model/user_login_model.dart';
import '../model/user_register_model.dart';

abstract class AuthDataSourceContract {
  Future<UserDataModel?> login({required UserLoginModel userModel});
  Future<void> logout();
  Future<UserDataModel?> register({required UserRegisterModel user});
}
