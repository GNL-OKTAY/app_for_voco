import 'package:app_for_voco/feature/home/controller/home_provider.dart';
import 'package:app_for_voco/feature/home/service/datasources/home_data_source.dart';
import 'package:get_it/get_it.dart';

import '../feature/auth/controller/user_id_controller.dart';
import '../feature/auth/service/contract/auth_datasource_contract.dart';
import '../feature/auth/service/datasources/reqres_auth_datasource.dart';
import '../feature/auth/controller/auth_controller.dart';

final GetIt getit = GetIt.asNewInstance();

void setupDependencies() {
  setupDataSources();
  setupProvider();
  setupRepositories();
  setupUseCases();

  // getit.registerLazySingleton<NavigationServiceContract>(
  //   () => NavigationService.instance,
  // );
}

void setupDataSources() {
  // GetIt.instance.registerSingleton<WellcomeDataSource>(WellcomeDataSource());
  getit.registerLazySingleton<AuthDataSourceContract>(
    () => ReqResAuthDataSource(),
  );
  // getit.registerLazySingleton<WelcomeDataSourceContract>(
  //   WellcomeDataSource.new,
  // );

  // getit.registerSingleton<WellcomeDataSource>(WellcomeDataSource());

  getit.registerLazySingleton<ReqResHomeDataSource>(
    () => ReqResHomeDataSource(),
  );

  // getit.registerSingleton<MarketDataSource>(MarketDataSource());
  // getit.registerSingleton<ProfileDataSource>(ProfileDataSource());
  // getit.registerSingleton<MyCalendarDataSource>(MyCalendarDataSource());
}

void setupRepositories() {
  // getit.registerLazySingleton<AuthRepositoryContract>(
  //   () => AuthRepository(
  //     loginDataSource: getit(),
  //   ),
  // );

  // getit
  //   ..registerLazySingleton<WelcomeRepository>(
  //     WelcomeRepository.new,
  //   )
  // getit.registerLazySingleton<HomeRepository>(
  //   () => HomeRepository(
  //     homeDataSource: getit(),
  //   ),
  // );
  // getit.registerLazySingleton<CalendarRepository>(
  //   () => CalendarRepository(),
  // );

  //   ..registerLazySingleton<MarketRepository>(
  //     () => MarketRepository(),
  //   )
  // getit.registerLazySingleton<ProfileRepository>(
  //   () => ProfileRepository(),
  // );
}

void setupProvider() {
  //
  getit.registerLazySingleton<AuthController>(
    () => AuthController(
      authDataSource: getit(),
    ),
  );

  getit.registerLazySingleton<HomeProvider>(
    () => HomeProvider(
      homeDataSource: getit(),
    ),
  );

  // getit.registerLazySingleton<CalendarDetayProvider(
  //   CalendarDetayProvider.new,
  // );

  // getit.registerLazySingleton<CalendarDetayProvider>(
  //   () => CalendarDetayProvider(),
  // );
  // getit.registerLazySingleton<MarketInfoCardProvider>(
  //   () => MarketInfoCardProvider(),
  // );

  // getit.registerLazySingleton<UserDetayProvider>(
  //   () => UserDetayProvider(),
  // );

  getit.registerLazySingleton<UserIdController>(
    () => UserIdController(),
  );
  // getit.registerLazySingleton<AddressProvider>(
  //   () => AddressProvider(),
  // );
}

void setupUseCases() {
  // getit.registerLazySingleton<HomeUseCase>(
  //   () => HomeUseCase(
  //     homeRepository: getit(),
  //   ),
  // );

  // getit.registerLazySingleton<AuthUseCase>(
  //   () => AuthUseCase(
  //     authRepository: getit(),
  //   ),
  // );

  // getit.registerLazySingleton<WelcomeUsecase>(
  //   () => WelcomeUsecase(
  //     welcomeRepository: getit(),
  //   ),
  // );
  // getit.registerLazySingleton<CalendarUsecase>(
  //   () => CalendarUsecase(
  //     calendarRepository: getit(),
  //   ),
  // );
  // getit.registerLazySingleton<ProfileUsecase>(
  //   () => ProfileUsecase(
  //     profileRepository: getit(),
  //   ),
  // );
}
