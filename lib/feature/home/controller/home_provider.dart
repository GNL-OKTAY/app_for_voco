import 'package:app_for_voco/feature/home/service/contract/home_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result_types/state_result/state_result.dart';
import '../../../injection/injection_container.dart';
import '../../auth/model/user_data_model.dart';

final homeProvider = ChangeNotifierProvider<HomeProvider>(
  (ref) => getit.get<HomeProvider>(),
);

class HomeProvider extends ChangeNotifier {
  HomeProvider({required HomeDataSourceContract homeDataSource}) {
    _homeDataSource = homeDataSource;
    checkCurrentUser();
  }

  UserDataModel? get getCurrentUser => _appUser;

  late final HomeDataSourceContract _homeDataSource;

  UserDataModel? _appUser;

  StateResult<UserDataModel?> currentUserState = const StateResult.initial();

  get isLoading => null;

  Future<void> checkCurrentUser() async {
    // currentUserState = const StateResult.loading();
    // final response = await _homeDataSource.checkCurrentUser();

    // response.when(
    //   success: (currentUser) {
    //     currentUserState = StateResult.completed(currentUser);
    //     _appUser = currentUser;
    //     notifyListeners();
    //   },
    //   failure: (failure) {
    //     currentUserState = StateResult.failed(failure);
    //     notifyListeners();
    //   },
    // );
  }
}
