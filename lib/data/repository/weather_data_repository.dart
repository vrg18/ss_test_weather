import 'package:ss_test_weather/data/api/api_util.dart';
import 'package:ss_test_weather/domain/model/weather.dart';
import 'package:ss_test_weather/domain/repository/weather_repository.dart';

class WeatherDataRepository extends WeatherRepository {
  final ApiUtil _apiUtil;

  WeatherDataRepository(this._apiUtil);

  @override
  Future<Weather> getWeather({int cityId}) {
    return _apiUtil.getWeather(cityId: cityId);
  }
}
