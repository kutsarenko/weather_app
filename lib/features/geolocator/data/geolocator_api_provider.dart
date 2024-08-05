import 'package:geolocator/geolocator.dart';
import 'package:weather_app/app_logger.dart';
import 'package:weather_app/features/geolocator/data/models/geo_dto_model.dart';

class GeolocatorApiProvider {
  Future<GeoDtoModel> getGeoData() async {
    try {
      LocationPermission permission;

      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location permissions are permanently denied, we cannot request permissions.');
      }

      Position? position = await Geolocator.getCurrentPosition();

      appLogger.i('current position - $position');

      double latitude = position.latitude;
      double longitude = position.longitude;

      final GeoDtoModel geoData = GeoDtoModel(
        latitude: latitude,
        longitude: longitude,
      );

      return geoData;
    } catch (error) {
      appLogger.e('getLocation error - $error');
      rethrow;
    }
  }
}
