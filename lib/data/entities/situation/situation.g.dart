// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Situation _$$_SituationFromJson(Map<String, dynamic> json) => _$_Situation(
      schedule: json['schedule'] == null
          ? const Schedule()
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      weather: $enumDecodeNullable(_$WeatherEnumMap, json['weather']),
      lifeline: json['lifeline'] == null
          ? const Lifelines()
          : Lifelines.fromJson(json['lifeline'] as Map<String, dynamic>),
      findings: json['findings'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_SituationToJson(_$_Situation instance) =>
    <String, dynamic>{
      'schedule': instance.schedule.toJson(),
      'weather': _$WeatherEnumMap[instance.weather],
      'lifeline': instance.lifeline.toJson(),
      'findings': instance.findings,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$WeatherEnumMap = {
  Weather.unknown: 'unknown',
  Weather.sunny: 'sunny',
  Weather.cloudy: 'cloudy',
  Weather.rainy: 'rainy',
  Weather.snowy: 'snowy',
};

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      startedAt: const DateTimeOrNullConverter().fromJson(json['startedAt']),
      endedAt: const DateTimeOrNullConverter().fromJson(json['endedAt']),
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'startedAt': const DateTimeOrNullConverter().toJson(instance.startedAt),
      'endedAt': const DateTimeOrNullConverter().toJson(instance.endedAt),
    };

_$_Lifelines _$$_LifelinesFromJson(Map<String, dynamic> json) => _$_Lifelines(
      water: json['water'] as bool?,
      electricity: json['electricity'] as bool?,
      gas: json['gas'] as bool?,
    );

Map<String, dynamic> _$$_LifelinesToJson(_$_Lifelines instance) =>
    <String, dynamic>{
      'water': instance.water,
      'electricity': instance.electricity,
      'gas': instance.gas,
    };
