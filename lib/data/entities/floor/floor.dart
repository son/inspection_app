import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'floor.freezed.dart';
part 'floor.g.dart';

@freezed
class Floor with _$Floor {
  const Floor._();

  @JsonSerializable(explicitToJson: true)
  const factory Floor({
    @Default(Damage()) Damage damage,
    @Default(Damage()) Damage sinking,
    @Default(Damage()) Damage inclination,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Floor;

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);

  Floor allPassed() {
    return copyWith(
      damage: damage.copyWith(result: Result.passed),
      sinking: sinking.copyWith(result: Result.passed),
      inclination: inclination.copyWith(result: Result.passed),
    );
  }
}
