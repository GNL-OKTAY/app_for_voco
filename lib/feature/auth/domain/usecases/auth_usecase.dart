import '../../../../core/error/result_types/result/result.dart';
import '../../data/model/user_login_model.dart';
import '../../data/model/user_register_model.dart';
import '../../model/user_data_model.dart';
import '../contract/auth_repository.dart';

class AuthUseCase {
  AuthUseCase({required AuthRepositoryContract authRepository}) {
    _authRepository = authRepository;
  }
  late final AuthRepositoryContract _authRepository;

  Future<Result<UserDataModel?>> login({
    required UserLoginModel userModel,
  }) async {
    final response = await _authRepository.login(userModel: userModel);
    return response;
  }

  Future<Result<UserDataModel?>> register({
    required UserRegisterModel userModel,
  }) async {
    final response = await _authRepository.register(userModel: userModel);
    return response;
  }

  Future<Result<bool>> logout() async {
    final response = await _authRepository.logout();
    return response;
  }
}
