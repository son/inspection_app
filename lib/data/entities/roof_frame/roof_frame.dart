import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'roof_frame.freezed.dart';
part 'roof_frame.g.dart';

@freezed
class RoofFrame with _$RoofFrame {
  const RoofFrame._();

  @JsonSerializable(explicitToJson: true)
  const factory RoofFrame({
    @Default(Damage()) Damage foundationDamage,
    @Default(Damage()) Damage rainRoofFrameLeak,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _RoofFrame;

  factory RoofFrame.fromJson(Map<String, dynamic> json) =>
      _$RoofFrameFromJson(json);
}
