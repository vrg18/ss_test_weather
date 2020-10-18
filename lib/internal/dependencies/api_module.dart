import 'package:ss_test_weather/data/api/api_util.dart';
import 'package:ss_test_weather/data/api/service/openweathermap_service.dart';

class ApiModule {
  static ApiUtil _apiUtil;

  static ApiUtil apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(OpenweathermapService());
    }
    return _apiUtil;
  }
}
