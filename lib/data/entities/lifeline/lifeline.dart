import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'lifeline.freezed.dart';
part 'lifeline.g.dart';

@freezed
class Lifeline with _$Lifeline {
  const Lifeline._();

  @JsonSerializable(explicitToJson: true)
  const factory Lifeline({
    @Default(Damage()) Damage lifelineMalfunction,
    @Default(Damage()) Damage otherMalfunction,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Lifeline;

  factory Lifeline.fromJson(Map<String, dynamic> json) =>
      _$LifelineFromJson(json);

  Lifeline allPassed() {
    return copyWith(
      notApplicable: false,
      lifelineMalfunction: lifelineMalfunction.copyWith(result: Result.passed),
      otherMalfunction: otherMalfunction.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      lifelineMalfunction.result,
      otherMalfunction.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final lifelineMalfunctionOk = lifelineMalfunction.result == Result.passed ||
        (lifelineMalfunction.result == Result.failure &&
            (lifelineMalfunction.part?.isNotEmpty ?? false) &&
            (lifelineMalfunction.content?.isNotEmpty ?? false) &&
            (lifelineMalfunction.situation?.isNotEmpty ?? false));
    final otherMalfunctionOk = otherMalfunction.result == Result.passed ||
        (otherMalfunction.result == Result.failure &&
            (otherMalfunction.part?.isNotEmpty ?? false) &&
            (otherMalfunction.situation?.isNotEmpty ?? false));
    return lifelineMalfunctionOk && otherMalfunctionOk && coverage != null;
  }
}
