import 'package:dio/dio.dart';
import 'package:ss_test_weather/data/api/model/api_weather.dart';
import 'package:ss_test_weather/data/api/request/get_weather_body.dart';

class OpenweathermapService {
  static const _BASE_URL = 'https://api.openweathermap.org';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  Future<ApiWeather> getWeather(GetWeatherBody body) async {
    final response = await _dio.get(
      '/data/2.5/weather',
      queryParameters: body.toApi(),
    );
    return ApiWeather.fromApi(response.data);
  }
}
