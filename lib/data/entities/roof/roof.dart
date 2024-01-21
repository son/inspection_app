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
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Roof;

  factory Roof.fromJson(Map<String, dynamic> json) => _$RoofFromJson(json);

  Roof allPassed() {
    return copyWith(
      notApplicable: false,
      damage: damage.copyWith(result: Result.passed),
      waterProofLayerDamage:
          waterProofLayerDamage.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    if (necessity == Necessity.apartmentUnitsPlan) {
      return true;
    }

    final results = [
      damage.result,
      waterProofLayerDamage.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final damageOk = damage.result == Result.passed ||
        (damage.result == Result.failure && damage.directions.isNotEmpty);
    final waterProofLayerDamageOk =
        waterProofLayerDamage.result == Result.passed ||
            (waterProofLayerDamage.result == Result.failure &&
                waterProofLayerDamage.directions.isNotEmpty);

    return necessity != null &&
        damageOk &&
        waterProofLayerDamageOk &&
        coverage != null;
  }
}
