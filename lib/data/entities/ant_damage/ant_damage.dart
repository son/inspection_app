import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'ant_damage.freezed.dart';
part 'ant_damage.g.dart';

@freezed
class AntDamage with _$AntDamage {
  const AntDamage._();

  const factory AntDamage({
    @Default(AccessPanel.none) AccessPanel accessPanel,
    @Default(Damage()) Damage antDamage,
    @Default(Coverage.almost) Coverage coverage,
    @Default('') String remarks,
  }) = _AntDamage;

  factory AntDamage.fromJson(Map<String, dynamic> json) =>
      _$AntDamageFromJson(json);
}

enum AccessPanel {
  none(label: 'なし'),
  exist(label: 'あり'),
  noNeed(label: '不要（床下空間なし）');

  const AccessPanel({required this.label});

  final String label;
}
