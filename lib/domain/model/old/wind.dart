import 'package:meta/meta.dart';

class Wind {
  final double speed; // скорость ветра
  final int deg; // направление

  Wind({
    @required this.speed,
    @required this.deg,
  });
}
