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
      notApplicable: false,
      damage: damage.copyWith(result: Result.passed),
      sinking: sinking.copyWith(result: Result.passed),
      inclination: inclination.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      damage.result,
      sinking.result,
      inclination.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final damageOk = damage.result == Result.passed ||
        (damage.result == Result.failure &&
            (damage.part?.isNotEmpty ?? false) &&
            (damage.max?.complete ?? false));
    final sinkingOk = sinking.result == Result.passed ||
        (sinking.result == Result.failure &&
            (sinking.part?.isNotEmpty ?? false));
    final inclinationOk = inclination.result == Result.passed ||
        (inclination.result == Result.failure &&
            (inclination.part?.isNotEmpty ?? false) &&
            (inclination.max?.complete ?? false));

    return damageOk && sinkingOk && inclinationOk && coverage != null;
  }
}
