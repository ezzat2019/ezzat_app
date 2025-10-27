import 'dart:convert';

import 'package:ezzat_app/app/data/model/trips_model.dart';
import 'package:ezzat_app/app/domain/repo/home_service.dart';
import 'package:flutter/services.dart';

class HomeRepo extends HomeService {
  @override
  Future<TripsModel> loadTrips() async {
    final String response = await rootBundle.loadString(
      'assets/mock/trips_mock.json',
    );
    final data = json.decode(response);
    return TripsModel.fromJson(data);
  }
}
