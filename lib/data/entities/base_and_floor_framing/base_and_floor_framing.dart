import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'base_and_floor_framing.freezed.dart';
part 'base_and_floor_framing.g.dart';

@freezed
class BaseAndFloorFraming with _$BaseAndFloorFraming {
  const BaseAndFloorFraming._();

  @JsonSerializable(explicitToJson: true)
  const factory BaseAndFloorFraming({
    @Default(Damage()) Damage damage,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _BaseAndFloorFraming;

  factory BaseAndFloorFraming.fromJson(Map<String, dynamic> json) =>
      _$BaseAndFloorFramingFromJson(json);

  BaseAndFloorFraming allPassed() {
    return copyWith(
      notApplicable: false,
      damage: damage.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      damage.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final damageOk = damage.result == Result.passed ||
        (damage.result == Result.failure &&
            (damage.part?.isNotEmpty ?? false) &&
            (damage.max?.complete ?? false));

    return damageOk && coverage != null;
  }
}
