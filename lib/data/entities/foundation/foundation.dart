import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/photo/photo.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'foundation.freezed.dart';
part 'foundation.g.dart';

@freezed
class Foundation with _$Foundation {
  const Foundation._();

  const factory Foundation({
    @Default(<String>[]) List<String> finishings,
    @Default(Damage()) Damage crack,
    @Default(Damage()) Damage damage,
    @Default(Damage()) Damage concreteDeterioration,
    @Default(Damage()) Damage rust,
    @Default(Damage()) Damage rebarExposure,
    @Default(Coverage.almost) Coverage coverage,
    @Default('') String remarks,
  }) = _Foundation;

  factory Foundation.fromJson(Map<String, dynamic> json) =>
      _$FoundationFromJson(json);
}

@freezed
class Damage with _$Damage {
  const Damage._();

  const factory Damage({
    @Default(Result.none) Result result,
    @Default(<Direction>[]) List<Direction> directions,
    @Default(0.0) double max,
    @Default(<Photo>[]) List<Photo> photos,
  }) = _Damage;

  factory Damage.fromJson(Map<String, dynamic> json) => _$DamageFromJson(json);
}
