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
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Piping;

  factory Piping.fromJson(Map<String, dynamic> json) => _$PipingFromJson(json);

  Piping allPassed() {
    return copyWith(
      notApplicable: false,
      supplyRustyWater: supplyRustyWater.copyWith(result: Result.passed),
      supplyWaterLeak: supplyWaterLeak.copyWith(result: Result.passed),
      sewerStuck: sewerStuck.copyWith(result: Result.passed),
      sewerWaterLeak: sewerWaterLeak.copyWith(result: Result.passed),
      ductLoss: ductLoss.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      supplyRustyWater.result,
      supplyWaterLeak.result,
      sewerStuck.result,
      sewerWaterLeak.result,
      ductLoss.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final supplyRustyWaterOk = supplyRustyWater.result == Result.passed ||
        (supplyRustyWater.result == Result.failure &&
            (supplyRustyWater.part?.isNotEmpty ?? false));
    final supplyWaterLeakOk = supplyWaterLeak.result == Result.passed ||
        (supplyWaterLeak.result == Result.failure &&
            (supplyWaterLeak.part?.isNotEmpty ?? false));
    final sewerStuckOk = sewerStuck.result == Result.passed ||
        (sewerStuck.result == Result.failure &&
            (sewerStuck.part?.isNotEmpty ?? false));
    final sewerWaterLeakOk = sewerWaterLeak.result == Result.passed ||
        (sewerWaterLeak.result == Result.failure &&
            (sewerWaterLeak.part?.isNotEmpty ?? false));
    final ductLossOk = ductLoss.result == Result.passed ||
        (ductLoss.result == Result.failure &&
            (ductLoss.part?.isNotEmpty ?? false));
    return supplyRustyWaterOk &&
        supplyWaterLeakOk &&
        sewerStuckOk &&
        sewerWaterLeakOk &&
        ductLossOk &&
        coverage != null;
  }
}
