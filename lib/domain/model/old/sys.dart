import 'package:meta/meta.dart';

class Sys {
  final int type;
  final int id;
  final double message;
  final String country; // код страны
  final int sunrise; // время восхода, unix, UTC
  final int sunset; // время заката, unix, UTC

  Sys({
    @required this.type,
    @required this.id,
    this.message,
    @required this.country,
    @required this.sunrise,
    @required this.sunset,
  });
}
