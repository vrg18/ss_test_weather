import 'package:meta/meta.dart';

class Weather {
  final int id; // Идентификатор погодных условий
  final String main; // Группа погодных параметров (Дождь, Снег и др.)
  final String description; // Погодные условия в группе
  final String icon; // Идентификатор значка погоды

  Weather({
    @required this.id,
    @required this.main,
    @required this.description,
    @required this.icon,
  });
}
