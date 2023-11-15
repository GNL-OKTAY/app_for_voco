// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../core/error/custom_error.dart';
import '../../../../core/error/result_types/result/result.dart';
import '../../data/contract/auth_datasource_contract.dart';
import '../../data/model/user_login_model.dart';
import '../../data/model/user_register_model.dart';
import '../../model/user_data_model.dart';
import '../contract/auth_repository.dart';

class AuthRepository implements AuthRepositoryContract {
  late final AuthDataSourceContract _loginDataSource;

  @override
  AuthRepository({
    required AuthDataSourceContract loginDataSource,
  }) {
    _loginDataSource = loginDataSource;
  }

  @override
  Future<Result<UserDataModel?>> login({
    required UserLoginModel userModel,
  }) async {
    try {
      final response = await _loginDataSource.login(userModel: userModel);
      return Result.success(response);
    } catch (e) {
      return Result.failure(CustomFailure(message: '$e'));
    }
  }

  @override
  Future<Result<UserDataModel?>> register({
    required UserRegisterModel userModel,
  }) async {
    try {
      final response = await _loginDataSource.register(user: userModel);
      return Result.success(response);
    } catch (e) {
      return Result.failure(CustomFailure(message: '$e'));
    }
  }

  @override
  Future<Result<bool>> logout() async {
    try {
      await _loginDataSource.logout();
      return const Result.success(true);
    } catch (e) {
      return Result.failure(CustomFailure(message: '$e'));
    }
  }
}
