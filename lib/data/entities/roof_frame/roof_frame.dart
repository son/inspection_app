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
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _RoofFrame;

  factory RoofFrame.fromJson(Map<String, dynamic> json) =>
      _$RoofFrameFromJson(json);

  RoofFrame allPassed() {
    return copyWith(
      notApplicable: false,
      foundationDamage: foundationDamage.copyWith(result: Result.passed),
      rainRoofFrameLeak: rainRoofFrameLeak.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      foundationDamage.result,
      rainRoofFrameLeak.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final foundationDamageOk = foundationDamage.result == Result.passed ||
        (foundationDamage.result == Result.failure &&
            (foundationDamage.part?.isNotEmpty ?? false) &&
            (foundationDamage.max?.complete ?? false));
    final rainRoofFrameLeakOk = rainRoofFrameLeak.result == Result.passed ||
        (rainRoofFrameLeak.result == Result.failure &&
            (rainRoofFrameLeak.part?.isNotEmpty ?? false));

    return foundationDamageOk && rainRoofFrameLeakOk && coverage != null;
  }
}
