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
    @Default('') String remarks,
  }) = _Corrosion;

  factory Corrosion.fromJson(Map<String, dynamic> json) =>
      _$CorrosionFromJson(json);

  Corrosion allPassed() {
    return copyWith(
      corrosion: corrosion.copyWith(result: Result.passed),
    );
  }
}
