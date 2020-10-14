import 'package:meta/meta.dart';
import 'package:ss_test_weather/domain/model/openweathermap.dart';

abstract class WeatherRepository {
  Future<Openweathermap> getWeather({
    @required int cityId,
  });
}