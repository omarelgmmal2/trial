part of 'controller.dart';

class WeatherData{
  late Coord coord;
  late List<Weather> weather;
  late String base;
  late Main main;
  late int visibility;
  late Wind wind;
  late Clouds clouds;
  late int dt;
  late Sys sys;
  late int timezone;
  late int id;
  late String name;
  late int cod;

  WeatherData.fromJson(Map<String,dynamic> json)
  {
    base = json["base"];
    visibility = json["visibility"];
    dt = json["dt"];
    timezone = json["timezone"];
    id = json["id"];
    name = json["name"];
    cod = json["cod"];
    sys = Sys.fromJson(json["sys"]);
    clouds = Clouds.fromJson(json["clouds"]);
    wind = Wind.fromJson(json["wind"]);
    main = Main.fromJson(json["main"]);
    weather = List.from(json["weather"]).map((e) => Weather.fromJson(e)).toList();
    coord = Coord.fromJson(json["coord"]);
  }


}

class Coord{
  late double lon,lat;
  Coord.fromJson(Map<String,dynamic> json)
  {
    lon = double.tryParse(json["lon"].toString())??0;
    lat = double.tryParse(json["lat"].toString())??0;
  }
}

class Weather{
  late int id;
  late String main,desc,icon;
  Weather.fromJson(Map<String,dynamic> json)
  {
    id = json["id"];
    main = json["main"];
    desc = json["description"];
    icon = json["icon"];
  }
}

class Main{
  late double temp;
  late double feelsLike;
  late double tempMin;
  late double tempMax;
  late double pressure,humidity;
  Main.fromJson(Map<String,dynamic> json)
  {
    temp = double.tryParse(json["temp"].toString())??0;
    feelsLike = double.tryParse(json["feels_like"].toString())??0;
    tempMin = double.tryParse(json["temp_min"].toString())??0;
    tempMax = double.tryParse(json["temp_max"].toString())??0;
    pressure = double.tryParse(json["pressure"].toString())??0;
    humidity = double.tryParse(json["humidity"].toString())??0;
  }


}

class Wind{
  late double speed,degree;
  Wind.fromJson(Map<String,dynamic> json)
  {
    speed = double.tryParse(json["speed"].toString())??0;
    degree = double.tryParse(json["deg"].toString())??0;
  }
}

class Clouds{
  late double all;
  Clouds.fromJson(Map<String,dynamic> json)
  {
    all = double.tryParse(json["all"].toString())??0;
  }
}

class Sys{
  late int type,id,sunrise,sunset;
  late String country;
  Sys.fromJson(Map<String,dynamic> json)
  {
    type = json["type"];
    id = json["id"];
    sunrise = json["sunrise"];
    sunset = json["sunset"];
    country = json["country"];
  }
}