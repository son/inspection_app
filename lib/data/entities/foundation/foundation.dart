import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'foundation.freezed.dart';
part 'foundation.g.dart';

@freezed
class Foundation with _$Foundation {
  const Foundation._();

  @JsonSerializable(explicitToJson: true)
  const factory Foundation({
    @Default(<String>[]) List<String> finishings,
    @Default(Damage()) Damage crack,
    @Default(Damage()) Damage damage,
    @Default(Damage()) Damage concreteDeterioration,
    @Default(Damage()) Damage rust,
    @Default(Damage()) Damage rebarExposure,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Foundation;

  factory Foundation.fromJson(Map<String, dynamic> json) =>
      _$FoundationFromJson(json);

  Foundation allPassed() {
    return copyWith(
      notApplicable: false,
      crack: crack.copyWith(result: Result.passed),
      damage: damage.copyWith(result: Result.passed),
      concreteDeterioration:
          concreteDeterioration.copyWith(result: Result.passed),
      rust: rust.copyWith(result: Result.passed),
      rebarExposure: rebarExposure.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      crack.result,
      damage.result,
      concreteDeterioration.result,
      rust.result,
      rebarExposure.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final crackOk = crack.result == Result.passed ||
        (crack.result == Result.failure && (crack.max?.complete ?? false));
    final damageOk = damage.result == Result.passed ||
        (damage.result == Result.failure && damage.directions.isNotEmpty);
    final concreteOk = concreteDeterioration.result == Result.passed ||
        (concreteDeterioration.result == Result.failure &&
            concreteDeterioration.directions.isNotEmpty &&
            (concreteDeterioration.max?.complete ?? false));
    final rustOk = rust.result == Result.passed ||
        (rust.result == Result.failure &&
            rust.directions.isNotEmpty &&
            (rust.max?.complete ?? false));
    final rebarOk = rebarExposure.result == Result.passed ||
        (rebarExposure.result == Result.failure &&
            rebarExposure.directions.isNotEmpty &&
            (rebarExposure.max?.complete ?? false));

    return finishings.isNotEmpty &&
        crackOk &&
        damageOk &&
        concreteOk &&
        rustOk &&
        rebarOk &&
        coverage != null;
  }
}
