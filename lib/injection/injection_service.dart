import 'package:app_for_voco/core/navigation/navigation_service.dart';
import 'package:app_for_voco/feature/home/service/datasources/home_data_source.dart';
import 'package:app_for_voco/injection/injection_container.dart';
import 'package:flutter/material.dart';

// import '../core/navigation/navigation_service.dart';
import '../feature/auth/controller/user_id_controller.dart';

final navigator = NavigationService.shared;

@immutable
class Injection {
  const Injection._();

  // static CalendarUsecase get calendarUsecase => getit.get<CalendarUsecase>();
  static ReqResHomeDataSource get homeUseCase =>
      getit.get<ReqResHomeDataSource>();
  // static MarketUseCase get marketUseCase => getit.get<MarketUseCase>();
  // static ProfileUsecase get profileUsecase => getit.get<ProfileUsecase>();
  // static WelcomeDataSourceContract get welcomeDataSource =>
  //     getit.get<WelcomeDataSourceContract>();
  // static ProfileDataSource get profileDatasource =>
  // getit.get<ProfileDataSource>();
  // static MyCalendarDataSource get myCalendarDatasource =>
  // getit.get<MyCalendarDataSource>();
  // static WelcomeRepository get welcomeRepository =>
  //     getit.get<WelcomeRepository>();
  // static CalendarDetayProvider get calendarDetayProvider =>
  // getit.get<CalendarDetayProvider>();
  // static MarketProvider get marketProvider => getit.get<MarketProvider>();
  // static MarketInfoCardProvider get marketInfoCardProvider =>
  //     getit.get<MarketInfoCardProvider>();
  // static UserDetayProvider get userDetayProvider =>
  // getit.get<UserDetayProvider>();
  static UserIdController get uidProvider => getit.get<UserIdController>();
  // static AddressProvider get addressProvider => getit.get<AddressProvider>();
}
