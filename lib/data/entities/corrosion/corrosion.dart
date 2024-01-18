import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'corrosion.freezed.dart';
part 'corrosion.g.dart';

@freezed
class Corrosion with _$Corrosion {
  const Corrosion._();

  @JsonSerializable(explicitToJson: true)
  const factory Corrosion({
    @Default(Damage()) Damage corrosion,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Corrosion;

  factory Corrosion.fromJson(Map<String, dynamic> json) =>
      _$CorrosionFromJson(json);

  Corrosion allPassed() {
    return copyWith(
      notApplicable: false,
      corrosion: corrosion.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      corrosion.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final corrosionOk = corrosion.result == Result.passed ||
        (corrosion.result == Result.failure &&
            (corrosion.part?.isNotEmpty ?? false));

    return corrosionOk && coverage != null;
  }
}
