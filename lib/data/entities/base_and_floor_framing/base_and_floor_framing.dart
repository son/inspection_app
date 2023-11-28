import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'base_and_floor_framing.freezed.dart';
part 'base_and_floor_framing.g.dart';

@freezed
class BaseAndFloorFraming with _$BaseAndFloorFraming {
  const BaseAndFloorFraming._();

  const factory BaseAndFloorFraming({
    @Default(Damage()) Damage damage,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _BaseAndFloorFraming;

  factory BaseAndFloorFraming.fromJson(Map<String, dynamic> json) =>
      _$BaseAndFloorFramingFromJson(json);
}
