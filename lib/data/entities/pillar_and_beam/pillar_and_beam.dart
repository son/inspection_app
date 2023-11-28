import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'pillar_and_beam.freezed.dart';
part 'pillar_and_beam.g.dart';

@freezed
class PillarAndBeam with _$PillarAndBeam {
  const PillarAndBeam._();

  const factory PillarAndBeam({
    @Default(Damage()) Damage pillarDamage,
    @Default(Damage()) Damage pillarInclination,
    @Default(Damage()) Damage beamDamage,
    @Default(Damage()) Damage beamDeflection,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _PillarAndBeam;

  factory PillarAndBeam.fromJson(Map<String, dynamic> json) =>
      _$PillarAndBeamFromJson(json);
}
