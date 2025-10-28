import 'package:ezzat_app/app/core/utilts/get_it_manager.dart';
import 'package:ezzat_app/app/domain/use_cases/home_use_case.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/model/trips_model.dart';

class HomeProvider extends ChangeNotifier {
  final HomeUseCase _homeUseCase = GetItManager.getIt.get<HomeUseCase>();

  TripsModel? tripsModel;
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  Future<TripsModel> loadTrips() async {
    var res = await _homeUseCase.loadTrips();
    tripsModel = res;
    notifyListeners();
    return res;
  }
}
