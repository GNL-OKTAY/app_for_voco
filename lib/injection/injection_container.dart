import 'package:app_for_voco/feature/auth/data/contract/auth_datasource_contract.dart';
import 'package:app_for_voco/feature/auth/data/datasources/auth_datasource.dart';

import '/feature/auth/domain/contract/auth_repository.dart';
import '/feature/auth/domain/repositories/auth_repository.dart';
import '/feature/auth/domain/usecases/auth_usecase.dart';
import '/feature/auth/provider/user_id_provider.dart';

import 'package:get_it/get_it.dart';

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
    () => AuthDataSource(),
  );
  // getit.registerLazySingleton<WelcomeDataSourceContract>(
  //   WellcomeDataSource.new,
  // );

  // getit.registerSingleton<WellcomeDataSource>(WellcomeDataSource());

  // getit.registerLazySingleton<HomeDataSourceContract>(
  //   () => HomeDataSource(
  //     firebaseAuth: FirebaseAuth.instance,
  //     firebaseFirestore: FirebaseFirestore.instance,
  //   ),
  // );

  // getit.registerSingleton<MarketDataSource>(MarketDataSource());
  // getit.registerSingleton<ProfileDataSource>(ProfileDataSource());
  // getit.registerSingleton<MyCalendarDataSource>(MyCalendarDataSource());
}

void setupRepositories() {
  getit.registerLazySingleton<AuthRepositoryContract>(
    () => AuthRepository(
      loginDataSource: getit(),
    ),
  );

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
  // getit.registerLazySingleton<AuthProvider>(
  //   () => AuthProvider(
  //     authUseCase: getit(),
  //   ),
  // );

  // getit.registerLazySingleton<HomeProvider>(
  //   () => HomeProvider(
  //     homeUseCase: getit(),
  //   ),
  // );

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

  getit.registerLazySingleton<UserIdProvider>(
    () => UserIdProvider(),
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

  getit.registerLazySingleton<AuthUseCase>(
    () => AuthUseCase(
      authRepository: getit(),
    ),
  );

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
