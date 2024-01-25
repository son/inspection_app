import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/json_supports.dart';

part 'situation.freezed.dart';
part 'situation.g.dart';

@freezed
class Situation with _$Situation {
  const Situation._();

  @JsonSerializable(explicitToJson: true)
  const factory Situation({
    @Default(Schedule()) Schedule schedule,
    Weather? weather,
    @Default(Lifelines()) Lifelines lifeline,
    String? findings,
    DateTime? createdAt,
  }) = _Situation;

  factory Situation.fromJson(Map<String, dynamic> json) =>
      _$SituationFromJson(json);

  bool get complete {
    return schedule.startedAt != null &&
        schedule.endedAt != null &&
        weather != null &&
        lifeline.water != null &&
        lifeline.electricity != null &&
        lifeline.gas != null;
  }
}

enum Weather {
  unknown(name: '不明'),
  sunny(name: '晴れ'),
  cloudy(name: 'くもり'),
  rainy(name: '雨'),
  snowy(name: '雪');

  const Weather({required this.name});

  final String name;
}

@freezed
class Schedule with _$Schedule {
  const Schedule._();

  @JsonSerializable(explicitToJson: true)
  const factory Schedule({
    @DateTimeOrNullConverter() DateTime? startedAt,
    @DateTimeOrNullConverter() DateTime? endedAt,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class Lifelines with _$Lifelines {
  const Lifelines._();

  @JsonSerializable(explicitToJson: true)
  const factory Lifelines({
    bool? water,
    bool? electricity,
    bool? gas,
  }) = _Lifelines;

  factory Lifelines.fromJson(Map<String, dynamic> json) =>
      _$LifelinesFromJson(json);
}
