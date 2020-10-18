import 'package:ss_test_weather/domain/state/home/home_state.dart';
import 'package:ss_test_weather/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(
      RepositoryModule.weatherRepository(),
    );
  }
}
