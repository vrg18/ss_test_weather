import 'package:meta/meta.dart';

class Snow {
  final int snow1h; // объем снега за последний час, мм
  final int snow3h; // объем снега за последние 3 часа, мм

  Snow({
    @required this.snow1h,
    @required this.snow3h,
  });
}
