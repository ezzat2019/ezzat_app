import 'package:ezzat_app/app/data/repo/home_repo.dart';
import 'package:ezzat_app/app/domain/repo/home_service.dart';
import 'package:get_it/get_it.dart';

import '../../domain/use_cases/home_use_case.dart';

abstract class GetItManager {
  static final GetIt getIt = GetIt.instance;

  static void setup() {
    getIt.registerLazySingleton<HomeService>(() => HomeRepo());
    getIt.registerLazySingleton<HomeUseCase>(() => HomeUseCase());
  }
}
