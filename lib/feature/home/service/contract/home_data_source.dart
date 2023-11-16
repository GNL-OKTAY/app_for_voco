import '../../../auth/model/user_data_model.dart';

abstract class HomeDataSourceContract {
  Future<dynamic> fetchData();
  Future<UserDataModel?> checkCurrentUser();
}
