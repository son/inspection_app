import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'piping.freezed.dart';
part 'piping.g.dart';

@freezed
class Piping with _$Piping {
  const Piping._();

  const factory Piping({
    @Default(Damage()) Damage supplyRustyWater,
    @Default(Damage()) Damage supplyWaterLeak,
    @Default(Damage()) Damage sewerStuck,
    @Default(Damage()) Damage sewerWaterLeak,
    @Default(Damage()) Damage ductLoss,
    @Default(Coverage.almost) Coverage coverage,
    @Default('') String remarks,
  }) = _Piping;

  factory Piping.fromJson(Map<String, dynamic> json) => _$PipingFromJson(json);
}
