import 'package:meta/meta.dart';

class Main {
  final double temp; // температура
  final double feelsLike; // температура по ощущению
  final double pressure; // давление
  final double humidity; // влажность
  final double tempMin;
  final double tempMax;
  final double seaLevel; // давление на уровне моря
  final double grndLevel; // давление на уровне земли

  Main({
    @required this.temp,
    @required this.feelsLike,
    @required this.pressure,
    @required this.humidity,
    @required this.tempMin,
    @required this.tempMax,
    this.seaLevel,
    this.grndLevel,
  });
}
