import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;

part 'weather.g.dart';

enum WeatherCondition {
  snow,
  sleet,
  hail,
  thunderstorm,
  heavyRain,
  lightRain,
  showers,
  heavyCloud,
  lightCloud,
  clear,
  unknown
}

@JsonSerializable()
class Weather extends Equatable {
  List<ConsolidatedWeather> consolidatedWeather;
  String time;
  String sunRise;
  String sunSet;
  String timezoneName;
  Parent parent;
  List<Sources> sources;
  String title;
  String locationType;
  int woeid;
  String lattLong;
  String timezone;

  Weather(
      {this.consolidatedWeather,
      this.time,
      this.sunRise,
      this.sunSet,
      this.timezoneName,
      this.parent,
      this.sources,
      this.title,
      this.locationType,
      this.woeid,
      this.lattLong,
      this.timezone});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class ConsolidatedWeather extends Equatable {
  int id;
  String weatherStateName;
  String weatherStateAbbr;
  String windDirectionCompass;
  String created;
  String applicableDate;
  double minTemp;
  double maxTemp;
  double theTemp;
  double windSpeed;
  double windDirection;
  double airPressure;
  int humidity;
  double visibility;
  int predictability;

  ConsolidatedWeather(
      {this.id,
      this.weatherStateName,
      this.weatherStateAbbr,
      this.windDirectionCompass,
      this.created,
      this.applicableDate,
      this.minTemp,
      this.maxTemp,
      this.theTemp,
      this.windSpeed,
      this.windDirection,
      this.airPressure,
      this.humidity,
      this.visibility,
      this.predictability});

  factory ConsolidatedWeather.fromJson(Map<String, dynamic> json) =>
      _$ConsolidatedWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$ConsolidatedWeatherToJson(this);

  static WeatherCondition _mapStringToWeatherCondition(String input) {
    WeatherCondition state;
    switch (input) {
      case 'sn':
        state = WeatherCondition.snow;
        break;
      case 'sl':
        state = WeatherCondition.sleet;
        break;
      case 'h':
        state = WeatherCondition.hail;
        break;
      case 't':
        state = WeatherCondition.thunderstorm;
        break;
      case 'hr':
        state = WeatherCondition.heavyRain;
        break;
      case 'lr':
        state = WeatherCondition.lightRain;
        break;
      case 's':
        state = WeatherCondition.showers;
        break;
      case 'hc':
        state = WeatherCondition.heavyCloud;
        break;
      case 'lc':
        state = WeatherCondition.lightCloud;
        break;
      case 'c':
        state = WeatherCondition.clear;
        break;
      default:
        state = WeatherCondition.unknown;
    }
    return state;
  }
}

@JsonSerializable()
class Parent extends Equatable {
  String title;
  String locationType;
  int woeid;
  String lattLong;

  Parent({this.title, this.locationType, this.woeid, this.lattLong});

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);

  Map<String, dynamic> toJson() => _$ParentToJson(this);
}

@JsonSerializable()
class Sources extends Equatable {
  String title;
  String slug;
  String url;
  int crawlRate;

  Sources({this.title, this.slug, this.url, this.crawlRate});

  factory Sources.fromJson(Map<String, dynamic> json) =>
      _$SourcesFromJson(json);

  Map<String, dynamic> toJson() => _$SourcesToJson(this);
}
