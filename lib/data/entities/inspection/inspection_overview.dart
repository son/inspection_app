import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/building/building.dart';
import 'package:inspection_app/data/entities/json_supports.dart';

part 'inspection_overview.freezed.dart';
part 'inspection_overview.g.dart';

@freezed
class InspectionOverview with _$InspectionOverview {
  const InspectionOverview._();

  @JsonSerializable(explicitToJson: true)
  const factory InspectionOverview({
    @Default(Schedule()) Schedule schedule,
    Weather? weather,
    HousingType? housingType,
    String? clientName,
    String? witnessName,
    @Default(Building()) Building building,
    @Default(Lifelines()) Lifelines lifeline,
    @Default('') String findings,
  }) = _InspectionOverview;

  factory InspectionOverview.fromJson(Map<String, dynamic> json) =>
      _$InspectionOverviewFromJson(json);
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

enum HousingType {
  detached(name: '一戸建ての住宅'),
  apartmentUnits(name: '（共同住宅など）住戸型'),
  apartmentBuilding(name: '（共同住宅など）住棟型');

  const HousingType({required this.name});

  final String name;
  static const title = '調査の区分';
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
