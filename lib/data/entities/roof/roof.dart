import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'roof.freezed.dart';
part 'roof.g.dart';

@freezed
class Roof with _$Roof {
  const Roof._();

  @JsonSerializable(explicitToJson: true)
  const factory Roof({
    Necessity? necessity,
    @Default(Damage()) Damage damage,
    @Default(Damage()) Damage waterProofLayerDamage,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _Roof;

  factory Roof.fromJson(Map<String, dynamic> json) => _$RoofFromJson(json);

  Roof allPassed() {
    return copyWith(
      damage: damage.copyWith(result: Result.passed),
      waterProofLayerDamage:
          waterProofLayerDamage.copyWith(result: Result.passed),
    );
  }
}
