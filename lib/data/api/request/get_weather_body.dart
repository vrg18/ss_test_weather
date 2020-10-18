import 'package:meta/meta.dart';

class GetWeatherBody {
  final int cityId;

  GetWeatherBody({
    @required this.cityId,
  });

  Map<String, dynamic> toApi() {
    return {
    'id': cityId,                                 // идентификатор города
    'units': 'metric',                            // система мер,
    'appId': 'c4e42a9718b82ecd673f03e9b84ababf',  // ключ доступа к сервису
    'lang': 'ru',                                 // язык
    };
  }
}
