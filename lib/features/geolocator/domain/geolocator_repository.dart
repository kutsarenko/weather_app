import 'package:weather_app/features/geolocator/data/geolocator_api_provider.dart';
import 'package:weather_app/features/geolocator/data/models/geo_dto_model.dart';

abstract interface class GeolocatorRepository {
  Future<GeoDtoModel> getGeoData();
}

class GeolocatorRepositoryImpl implements GeolocatorRepository {
  final GeolocatorApiProvider geolocatorApiProvider;
  const GeolocatorRepositoryImpl(this.geolocatorApiProvider);
  @override
  Future<GeoDtoModel> getGeoData() async {
    try {
      return await geolocatorApiProvider.getGeoData();
    } catch (e) {
      throw Exception();
    }
  }
}
