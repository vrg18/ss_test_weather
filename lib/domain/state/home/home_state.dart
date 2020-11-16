import 'package:meta/meta.dart';
import 'package:mobx/mobx.dart';
import 'package:ss_test_weather/domain/model/weather.dart';
import 'package:ss_test_weather/domain/repository/location_repository.dart';
import 'package:ss_test_weather/domain/repository/weather_repository.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  HomeStateBase(this._locationRepository, this._weatherRepository);

  final LocationRepository _locationRepository;
  final WeatherRepository _weatherRepository;

  @observable
  Weather weather;

  @observable
  bool isLoading = false;

  @observable
  bool locationError = false;

  bool previousDenied = true;

  @action
  Future<void> getWeather({
    @required int cityId,
  }) async {
    isLoading = true;
    final locationData = await _locationRepository.getLocation(previousDenied);
    if (locationData == null) {
      previousDenied = true;
      locationError = true;
      weather = null;
    } else {
      previousDenied = false;
      final weatherData = await _weatherRepository.getWeather(cityId: cityId);
      locationError = false;
      weather = weatherData;
    }
    isLoading = false;
  }
}
