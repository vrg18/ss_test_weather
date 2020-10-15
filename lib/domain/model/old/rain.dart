import 'package:meta/meta.dart';

class Rain {
  final int rain1h; // объем дождя за последний час, мм
  final int rain3h; // объем дождя за последние 3 часа, мм

  Rain({
    @required this.rain1h,
    @required this.rain3h,
  });
}
