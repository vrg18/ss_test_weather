import 'package:meta/meta.dart';

class Weather {
  final double coordLon; // долгота
  final double coordLat; // широта
  final int weatherId; // идентификатор погодных условий
  final String weatherMain; // группа погодных параметров (дождь, снег и др.)
  final String weatherDescription; // гогодные условия в группе
  final String weatherIcon; // идентификатор значка погоды
  final String base;
  final double temp; // температура
  final double feelsLike; // температура по ощущению
  final double tempMin;
  final double tempMax;
  final double pressure; // давление
  final double humidity; // влажность
  final double windSpeed; // скорость ветра
  final int windDeg; // направление
  final int clouds; // облачность, %
  final int rain1h; // объем дождя за последний час, мм
  final int rain3h; // объем дождя за последние 3 часа, мм
  final int snow1h; // объем снега за последний час, мм
  final int snow3h; // объем снега за последние 3 часа, мм
  final DateTime dt; // время расчета данных, unix, UTC
  final int sysType;
  final int sysId;
  final String country; // код страны
  final DateTime sunrise; // время восхода, unix, UTC
  final DateTime sunset; // время заката, unix, UTC
  final int timezone; // сдвиг в секундах от UTC
  final int cityId; // ID города
  final String cityName; // название города
  final int cod;

  Weather({
    @required this.coordLon,
    @required this.coordLat,
    @required this.weatherId,
    @required this.weatherMain,
    @required this.weatherDescription,
    @required this.weatherIcon,
    @required this.base,
    @required this.temp,
    @required this.feelsLike,
    @required this.tempMin,
    @required this.tempMax,
    @required this.pressure,
    @required this.humidity,
    @required this.windSpeed,
    @required this.windDeg,
    @required this.clouds,
    this.rain1h,
    this.rain3h,
    this.snow1h,
    this.snow3h,
    @required this.dt,
    @required this.sysType,
    @required this.sysId,
    @required this.country,
    @required this.sunrise,
    @required this.sunset,
    @required this.timezone,
    @required this.cityId,
    @required this.cityName,
    @required this.cod,
  });
}
