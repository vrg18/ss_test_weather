import 'package:mobx/mobx.dart';
import 'package:meta/meta.dart';
import 'package:ss_test_weather/domain/model/weather.dart';
import 'package:ss_test_weather/domain/repository/weather_repository.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  HomeStateBase(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @observable
  Weather weather;

  @observable
  bool isLoading = false;

  @action
  Future<void> getWeather({
    @required int cityId,
  }) async {
    isLoading = true;
    final data = await _weatherRepository.getWeather(cityId: cityId);
    weather = data;
    isLoading = false;
  }
}
