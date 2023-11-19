import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'balcony.freezed.dart';
part 'balcony.g.dart';

@freezed
class Balcony with _$Balcony {
  const Balcony._();

  const factory Balcony({
    @Default(Damage()) Damage foundation,
    @Default(Damage()) Damage waterProofLayer,
    @Default(Coverage.almost) Coverage foundationCoverage,
    @Default(Coverage.almost) Coverage waterProofLayerCoverage,
    @Default('') String remarks,
  }) = _Balcony;

  factory Balcony.fromJson(Map<String, dynamic> json) =>
      _$BalconyFromJson(json);
}
