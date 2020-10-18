import 'package:ss_test_weather/data/api/model/api_weather.dart';
import 'package:ss_test_weather/domain/model/weather.dart';

class WeatherMapper {
  static Weather fromApi(ApiWeather weather) {
    return Weather(
      // coordLon: weather.coordLon,
      // coordLat: weather.coordLat,
      // weatherId: weather.weatherId,
      // weatherMain: weather.weatherMain,
      // weatherDescription: weather.weatherDescription,
      // weatherIcon: weather.weatherIcon,
      // base: weather.base,
      temp: weather.temp,
      // feelsLike: weather.feelsLike,
      // tempMin: weather.tempMin,
      // tempMax: weather.tempMax,
      pressure: (weather.pressure / 1.333223684).round(), // преобразуем из hPa в мм рт. ст.,
      humidity: weather.humidity, // преобразуем из hPa в мм рт. ст.
      // windSpeed: weather.windSpeed,
      // windDeg: weather.windDeg,
      // clouds: weather.clouds,
      // rain1h: weather.rain1h,
      // rain3h: weather.rain3h,
      // snow1h: weather.snow1h,
      // snow3h: weather.snow3h,
      // dt: DateTime.fromMillisecondsSinceEpoch(weather.dt + weather.timezone * 1000),
      // sysType: weather.sysType,
      // sysId: weather.sysId,
      // country: weather.country,
      // sunrise: DateTime.fromMillisecondsSinceEpoch(weather.sunrise + weather.timezone * 1000),
      // sunset: DateTime.fromMillisecondsSinceEpoch(weather.sunset + weather.timezone * 1000),
      // cityId: weather.cityId,
      // timezone: weather.timezone,
      cityName: weather.cityName,
      // cod: weather.cod,
    );
  }
}
