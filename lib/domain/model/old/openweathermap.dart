import 'package:meta/meta.dart';

import 'clouds.dart';
import 'coord.dart';
import 'main.dart';
import 'rain.dart';
import 'snow.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

class Openweathermap {
  final Coord coord; // координаты
  final List<Weather> weathers; // коды погодных условий
  final String base;
  final Main main; // температура, давление, влажность
  final Wind wind; // ветер
  final Clouds clouds; // облачность
  final Rain rain; // дождь
  final Snow snow; // снег
  final int dt; // время расчета данных, unix, UTC
  final Sys sys; // страна и восход-закат
  final int timezone; // сдвиг в секундах от UTC
  final int id; // ID города
  final String name; // название города
  final int cod;

  Openweathermap({
    @required this.coord,
    @required this.weathers,
    @required this.base,
    @required this.main,
    @required this.wind,
    @required this.clouds,
    this.rain,
    this.snow,
    @required this.dt,
    @required this.sys,
    @required this.timezone,
    @required this.id,
    @required this.name,
    @required this.cod,
  });
}
