import 'package:meta/meta.dart';
import 'package:ss_test_weather/domain/model/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeather({
    @required int cityId,
  });
}