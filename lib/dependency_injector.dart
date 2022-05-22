import 'package:data/modules/user_module.dart';
import 'package:data/repository/user/source/user_source.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/services/http/http_service.dart';
import 'package:network/client_api/user_client_api.dart';

final locator = GetIt.instance;

Future<void> init(String baseUrl) async {
  // Service
  locator.registerLazySingleton(() => HttpService());

  // Client API
  locator
      .registerLazySingleton(() => UserClientApi(locator.get<HttpService>()));

  // Module Implementation
  locator.registerLazySingleton(
    () => UserModule(
      cloudDataSource:
          CloudDataSource(userClientApi: locator.get<UserClientApi>()),
      firebaseDataSource: FirebaseDataSource(),
    ),
  );

  // BLoC
  // inject.registerFactory(() => CrewBloc(repository: inject()));
  // inject.registerFactory(() => TrailerBloc(repository: inject()));

  // inject.registerFactory(() => DiscoverMovieBloc(repository: inject()));
  // inject.registerFactory(() => MovieNowPlayingBloc(repository: inject()));
  // inject.registerFactory(() => MoviePopularBloc(repository: inject()));
  // inject.registerFactory(() => MovieUpComingBloc(repository: inject()));

  // inject.registerFactory(() => TvAiringTodayBloc(repository: inject()));
  // inject.registerFactory(() => TvPopularBloc(repository: inject()));
  // inject.registerFactory(() => TvOnTheAirBloc(repository: inject()));

  // inject.registerFactory(() => ThemeBloc(prefHelper: inject()));

  // // Repository
  // inject.registerLazySingleton<Repository>(() =>
  //     MovieRepository(apiRepository: inject(), localRepository: inject()));
  // inject.registerLazySingleton(() => LocalRepository(prefHelper: inject()));
  // inject.registerLazySingleton(() => ApiRepository(apiService: inject()));

  // // Local
  // final preferences = await SharedPreferences.getInstance();
  // inject.registerLazySingleton(() => preferences);
  // inject.registerLazySingleton(() => SharedPrefHelper(preferences: inject()));

  // // Network
  // inject.registerLazySingleton(() => ApiService(dio: inject()));
  // inject.registerLazySingleton(() => inject<DioClient>().dio);
  // inject.registerLazySingleton(() => DioClient(apiBaseUrl: baseUrl));
}
