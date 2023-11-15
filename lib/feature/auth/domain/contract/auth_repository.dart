import '../../../../core/error/result_types/result/result.dart';
import '../../data/model/user_login_model.dart';
import '../../data/model/user_register_model.dart';
import '../../model/user_data_model.dart';

abstract class AuthRepositoryContract {
  Future<Result<UserDataModel?>> login({required UserLoginModel userModel});
  Future<Result<bool>> logout();
  Future<Result<UserDataModel?>> register({
    required UserRegisterModel userModel,
  });
}
