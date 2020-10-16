import 'package:meta/meta.dart';

class GetWeatherBody {
  final int cityId; // идентификатор города
  static const String units = 'metric'; // система мер
  static const String key = 'c4e42a9718b82ecd673f03e9b84ababf'; // ключ доступа к сервису
  static const String lang = 'ru'; // язык

  GetWeatherBody({
    @required this.cityId,
  });

  Map<String, dynamic> toApi() {
    return {
    'id': cityId,
    'units': units,
    'appid': key,
    'lang': lang,
    };
  }
}
