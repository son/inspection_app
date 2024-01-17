import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'balcony.freezed.dart';
part 'balcony.g.dart';

@freezed
class Balcony with _$Balcony {
  const Balcony._();

  @JsonSerializable(explicitToJson: true)
  const factory Balcony({
    @Default(Damage()) Damage foundation,
    @Default(Damage()) Damage waterProofLayer,
    Coverage? foundationCoverage,
    Coverage? waterProofLayerCoverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Balcony;

  factory Balcony.fromJson(Map<String, dynamic> json) =>
      _$BalconyFromJson(json);

  Balcony allPassed() {
    return copyWith(
      notApplicable: false,
      foundation: foundation.copyWith(result: Result.passed),
      waterProofLayer: waterProofLayer.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      foundation.result,
      waterProofLayer.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final foundationOk = foundation.result == Result.passed ||
        (foundation.result == Result.failure &&
            foundation.directions.isNotEmpty);
    final waterProofLayerOk = waterProofLayer.result == Result.passed ||
        (waterProofLayer.result == Result.failure &&
            waterProofLayer.directions.isNotEmpty);

    return foundationOk &&
        waterProofLayerOk &&
        foundationCoverage != null &&
        waterProofLayerCoverage != null;
  }
}
