import 'package:meta/meta.dart';
import 'package:ss_test_weather/data/api/request/get_weather_body.dart';
import 'package:ss_test_weather/data/api/service/openweathermap_service.dart';
import 'package:ss_test_weather/data/mapper/weather_mapper.dart';
import 'package:ss_test_weather/domain/model/weather.dart';

class ApiUtil {
  final OpenweathermapService _openweathermapService;

  ApiUtil(this._openweathermapService);

  Future<Weather> getWeather({
    @required int cityId,
  }) async {
    final body = GetWeatherBody(cityId: cityId);
    final result = await _openweathermapService.getWeather(body);
    return WeatherMapper.fromApi(result);
  }
}
