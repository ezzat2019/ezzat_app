import 'package:ezzat_app/app/data/model/trips_model.dart';

abstract class HomeService {
  Future<TripsModel> loadTrips();
}
