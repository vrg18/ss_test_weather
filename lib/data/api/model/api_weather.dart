class ApiWeather {
  final double coordLon; // долгота
  final double coordLat; // широта
  final int weatherId; // идентификатор погодных условий
  final String weatherMain; // группа погодных параметров (дождь, снег и др.)
  final String weatherDescription; // погодные условия в группе
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
  final int dt; // время расчета данных, unix, UTC
  final int sysType;
  final int sysId;
  final String country; // код страны
  final int sunrise; // время восхода, unix, UTC
  final int sunset; // время заката, unix, UTC
  final int timezone; // сдвиг в секундах от UTC
  final int cityId; // ID города
  final String cityName; // название города
  final int cod;

  ApiWeather.fromApi(Map<String, dynamic> map)
      : coordLon = map['coord']['lon'],
        coordLat = map['coord']['lat'],
        weatherId = map['weather']['0']['id'],
        weatherMain = map['weather']['0']['main'],
        weatherDescription = map['weather']['0']['description'],
        weatherIcon = map['weather']['0']['icon'],
        base = map['base'],
        temp = map['main']['temp'],
        feelsLike = map['main']['feels_like'],
        tempMin = map['main']['temp_min'],
        tempMax = map['main']['temp_max'],
        pressure = map['main']['pressure'],
        humidity = map['main']['humidity'],
        windSpeed = map['wind']['speed'],
        windDeg = map['wind']['deg'],
        clouds = map['clouds']['all'],
        rain1h = map['rain']['1h'],
        rain3h = map['rain']['3h'],
        snow1h = map['snow']['1h'],
        snow3h = map['snow']['3h'],
        dt = map['dt'],
        sysType = map['sys']['type'],
        sysId = map['sys']['id'],
        country = map['sys']['country'],
        sunrise = map['sys']['sunrise'],
        sunset = map['sys']['sunset'],
        timezone = map['timezone'],
        cityId = map['id'],
        cityName = map['name'],
        cod = map['cod'];
}
