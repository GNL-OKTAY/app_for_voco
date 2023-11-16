import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/error/custom_error.dart';
import '/core/error/result_types/state_result/state_result.dart';

import '../../auth/model/user_data_model.dart';
import '../service/home_service.dart';

final homeProvider = ChangeNotifierProvider<HomeProvider>(
  (ref) => HomeProvider(homeDataSource: ReqResHomeDataSource()),
);

class HomeProvider extends ChangeNotifier {
  HomeProvider({required ReqResHomeDataSource homeDataSource}) {
    _homeDataSource = homeDataSource;
  }

  UserDataModel? get getCurrentUser => _appUser;

  late final ReqResHomeDataSource _homeDataSource;

  UserDataModel? _appUser;

  StateResult<UserDataModel?> currentUserState = const StateResult.initial();

  get isLoading => null;

  StateResult<List<UserDataModel>> fetchDataState = const StateResult.initial();

  Future<void> fetchData() async {
    fetchDataState = const StateResult.loading();
    notifyListeners();
    try {
      final response = await _homeDataSource.fetchUserList();
      fetchDataState = StateResult.completed(response);
      notifyListeners();
    } on PlatformException catch (e) {
      fetchDataState = StateResult.failed(CustomFailure(message: e.message ?? "Veriler getirilerken bir problem olustu."));
      notifyListeners();
    }
  }
}
