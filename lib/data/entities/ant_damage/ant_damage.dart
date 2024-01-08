import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'ant_damage.freezed.dart';
part 'ant_damage.g.dart';

@freezed
class AntDamage with _$AntDamage {
  const AntDamage._();

  @JsonSerializable(explicitToJson: true)
  const factory AntDamage({
    AccessPanel? accessPanel,
    @Default(Damage()) Damage antDamage,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _AntDamage;

  factory AntDamage.fromJson(Map<String, dynamic> json) =>
      _$AntDamageFromJson(json);

  AntDamage allPassed() {
    return copyWith(
      antDamage: antDamage.copyWith(result: Result.passed),
    );
  }
}

enum AccessPanel {
  none(label: 'なし'),
  exist(label: 'あり'),
  noNeed(label: '不要（床下空間なし）');

  const AccessPanel({required this.label});

  final String label;
}
