import 'package:open_weather_cubit/exceptions/weather_exception.dart';
import 'package:open_weather_cubit/models/custom_error.dart';
import 'package:open_weather_cubit/models/direct_geociding.dart';
import 'package:open_weather_cubit/models/weather.dart';
import 'package:open_weather_cubit/services/weather_api_services.dart';

class WeatherRepository {
  final WeatherApiServices weatherApiServices;

  WeatherRepository({required this.weatherApiServices});

  Future<Weather> fetchWeather(String city) async {
    try {
      final DirectGeocoding directGeocodig = await weatherApiServices
          .getDirectGeocoding(city);
      print('directGeocoding: $directGeocodig');

      final Weather tempWeather = await weatherApiServices.getWeather(
        directGeocodig,
      );
      print('tempWeather: $tempWeather');

      final Weather weather = tempWeather.copyWith(
        name: directGeocodig.name,
        country: directGeocodig.country,
      );

      print('weather $weather');

      return weather;
    } on WeatherException catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}
