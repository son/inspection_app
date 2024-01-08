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
    @Default('') String remarks,
  }) = _Balcony;

  factory Balcony.fromJson(Map<String, dynamic> json) =>
      _$BalconyFromJson(json);

  Balcony allPassed() {
    return copyWith(
      foundation: foundation.copyWith(result: Result.passed),
      waterProofLayer: waterProofLayer.copyWith(result: Result.passed),
    );
  }
}
