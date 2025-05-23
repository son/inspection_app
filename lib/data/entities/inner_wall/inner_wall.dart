import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'inner_wall.freezed.dart';
part 'inner_wall.g.dart';

@freezed
class InnerWall with _$InnerWall {
  const InnerWall._();

  @JsonSerializable(explicitToJson: true)
  const factory InnerWall({
    @Default(Damage()) Damage foundationDamage,
    @Default(Damage()) Damage foundationInclination,
    @Default(Damage()) Damage rainInnerWallLeak,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _InnerWall;

  factory InnerWall.fromJson(Map<String, dynamic> json) =>
      _$InnerWallFromJson(json);

  InnerWall allPassed() {
    return copyWith(
      notApplicable: false,
      foundationDamage: foundationDamage.copyWith(result: Result.passed),
      foundationInclination:
          foundationInclination.copyWith(result: Result.passed),
      rainInnerWallLeak: rainInnerWallLeak.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      foundationDamage.result,
      foundationInclination.result,
      rainInnerWallLeak.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final foundationDamageOk = foundationDamage.result == Result.passed ||
        (foundationDamage.result == Result.failure &&
            (foundationDamage.part?.isNotEmpty ?? false) &&
            (foundationDamage.max?.complete ?? false));
    final foundationInclinationOk =
        foundationInclination.result == Result.passed ||
            (foundationInclination.result == Result.failure &&
                (foundationInclination.part?.isNotEmpty ?? false) &&
                (foundationInclination.max?.complete ?? false));
    final rainInnerWallLeakOk = rainInnerWallLeak.result == Result.passed ||
        (rainInnerWallLeak.result == Result.failure &&
            (rainInnerWallLeak.part?.isNotEmpty ?? false));

    return foundationDamageOk &&
        foundationInclinationOk &&
        rainInnerWallLeakOk &&
        coverage != null;
  }
}
