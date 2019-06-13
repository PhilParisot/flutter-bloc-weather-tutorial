// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
      consolidatedWeather: (json['consolidatedWeather'] as List)
          ?.map((e) => e == null
              ? null
              : ConsolidatedWeather.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      time: json['time'] as String,
      sunRise: json['sunRise'] as String,
      sunSet: json['sunSet'] as String,
      timezoneName: json['timezoneName'] as String,
      parent: json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map<String, dynamic>),
      sources: (json['sources'] as List)
          ?.map((e) =>
              e == null ? null : Sources.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      title: json['title'] as String,
      locationType: json['locationType'] as String,
      woeid: json['woeid'] as int,
      lattLong: json['lattLong'] as String,
      timezone: json['timezone'] as String);
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'consolidatedWeather': instance.consolidatedWeather,
      'time': instance.time,
      'sunRise': instance.sunRise,
      'sunSet': instance.sunSet,
      'timezoneName': instance.timezoneName,
      'parent': instance.parent,
      'sources': instance.sources,
      'title': instance.title,
      'locationType': instance.locationType,
      'woeid': instance.woeid,
      'lattLong': instance.lattLong,
      'timezone': instance.timezone
    };

ConsolidatedWeather _$ConsolidatedWeatherFromJson(Map<String, dynamic> json) {
  return ConsolidatedWeather(
      id: json['id'] as int,
      weatherStateName: json['weatherStateName'] as String,
      weatherStateAbbr: json['weatherStateAbbr'] as String,
      windDirectionCompass: json['windDirectionCompass'] as String,
      created: json['created'] as String,
      applicableDate: json['applicableDate'] as String,
      minTemp: (json['minTemp'] as num)?.toDouble(),
      maxTemp: (json['maxTemp'] as num)?.toDouble(),
      theTemp: (json['theTemp'] as num)?.toDouble(),
      windSpeed: (json['windSpeed'] as num)?.toDouble(),
      windDirection: (json['windDirection'] as num)?.toDouble(),
      airPressure: (json['airPressure'] as num)?.toDouble(),
      humidity: json['humidity'] as int,
      visibility: (json['visibility'] as num)?.toDouble(),
      predictability: json['predictability'] as int);
}

Map<String, dynamic> _$ConsolidatedWeatherToJson(
        ConsolidatedWeather instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weatherStateName': instance.weatherStateName,
      'weatherStateAbbr': instance.weatherStateAbbr,
      'windDirectionCompass': instance.windDirectionCompass,
      'created': instance.created,
      'applicableDate': instance.applicableDate,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'theTemp': instance.theTemp,
      'windSpeed': instance.windSpeed,
      'windDirection': instance.windDirection,
      'airPressure': instance.airPressure,
      'humidity': instance.humidity,
      'visibility': instance.visibility,
      'predictability': instance.predictability
    };

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return Parent(
      title: json['title'] as String,
      locationType: json['locationType'] as String,
      woeid: json['woeid'] as int,
      lattLong: json['lattLong'] as String);
}

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'title': instance.title,
      'locationType': instance.locationType,
      'woeid': instance.woeid,
      'lattLong': instance.lattLong
    };

Sources _$SourcesFromJson(Map<String, dynamic> json) {
  return Sources(
      title: json['title'] as String,
      slug: json['slug'] as String,
      url: json['url'] as String,
      crawlRate: json['crawlRate'] as int);
}

Map<String, dynamic> _$SourcesToJson(Sources instance) => <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'url': instance.url,
      'crawlRate': instance.crawlRate
    };
