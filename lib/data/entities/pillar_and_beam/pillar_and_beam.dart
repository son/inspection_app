import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'pillar_and_beam.freezed.dart';
part 'pillar_and_beam.g.dart';

@freezed
class PillarAndBeam with _$PillarAndBeam {
  const PillarAndBeam._();

  @JsonSerializable(explicitToJson: true)
  const factory PillarAndBeam({
    @Default(Damage()) Damage pillarDamage,
    @Default(Damage()) Damage pillarInclination,
    @Default(Damage()) Damage beamDamage,
    @Default(Damage()) Damage beamDeflection,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _PillarAndBeam;

  factory PillarAndBeam.fromJson(Map<String, dynamic> json) =>
      _$PillarAndBeamFromJson(json);

  PillarAndBeam allPassed() {
    return copyWith(
      notApplicable: false,
      pillarDamage: pillarDamage.copyWith(result: Result.passed),
      pillarInclination: pillarInclination.copyWith(result: Result.passed),
      beamDamage: beamDamage.copyWith(result: Result.passed),
      beamDeflection: beamDeflection.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      pillarDamage.result,
      pillarInclination.result,
      beamDamage.result,
      beamDeflection.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final pillarDamageOk = pillarDamage.result == Result.passed ||
        (pillarDamage.result == Result.failure &&
            (pillarDamage.part?.isNotEmpty ?? false) &&
            (pillarDamage.max?.complete ?? false));
    final pillarInclinationOk = pillarInclination.result == Result.passed ||
        (pillarInclination.result == Result.failure &&
            (pillarInclination.part?.isNotEmpty ?? false) &&
            (pillarInclination.max?.complete ?? false));
    final beamDamageOk = beamDamage.result == Result.passed ||
        (beamDamage.result == Result.failure &&
            (beamDamage.part?.isNotEmpty ?? false) &&
            (beamDamage.max?.complete ?? false));
    final beamDeflectionOk = beamDeflection.result == Result.passed ||
        (beamDeflection.result == Result.failure &&
            (beamDeflection.part?.isNotEmpty ?? false));

    return pillarDamageOk &&
        pillarInclinationOk &&
        beamDamageOk &&
        beamDeflectionOk &&
        coverage != null;
  }
}
