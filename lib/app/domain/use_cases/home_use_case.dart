import 'package:ezzat_app/app/core/utilts/get_it_manager.dart';
import 'package:ezzat_app/app/domain/repo/home_service.dart';

import '../../data/model/trips_model.dart';

class HomeUseCase {
  final HomeService _homeService = GetItManager.getIt.get();

  Future<TripsModel> loadTrips() async {
    return await _homeService.loadTrips();
  }
}
