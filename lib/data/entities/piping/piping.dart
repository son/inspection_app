import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'piping.freezed.dart';
part 'piping.g.dart';

@freezed
class Piping with _$Piping {
  const Piping._();

  @JsonSerializable(explicitToJson: true)
  const factory Piping({
    @Default(Damage()) Damage supplyRustyWater,
    @Default(Damage()) Damage supplyWaterLeak,
    @Default(Damage()) Damage sewerStuck,
    @Default(Damage()) Damage sewerWaterLeak,
    @Default(Damage()) Damage ductLoss,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _Piping;

  factory Piping.fromJson(Map<String, dynamic> json) => _$PipingFromJson(json);

  Piping allPassed() {
    return copyWith(
      supplyRustyWater: supplyRustyWater.copyWith(result: Result.passed),
      supplyWaterLeak: supplyWaterLeak.copyWith(result: Result.passed),
      sewerStuck: sewerStuck.copyWith(result: Result.passed),
      sewerWaterLeak: sewerWaterLeak.copyWith(result: Result.passed),
      ductLoss: ductLoss.copyWith(result: Result.passed),
    );
  }
}
