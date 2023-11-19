import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'ceiling.freezed.dart';
part 'ceiling.g.dart';

@freezed
class Ceiling with _$Ceiling {
  const Ceiling._();

  const factory Ceiling({
    @Default(AccessPanel.none) AccessPanel accessPanel,
    @Default(Damage()) Damage foundationDamage,
    @Default(Damage()) Damage rainCeilingLeak,
    @Default(Coverage.almost) Coverage coverage,
    @Default('') String remarks,
  }) = _Ceiling;

  factory Ceiling.fromJson(Map<String, dynamic> json) =>
      _$CeilingFromJson(json);
}

enum AccessPanel {
  none(label: 'なし'),
  exist(label: 'あり'),
  noNeed(label: '不要（小屋裏空間なし）');

  const AccessPanel({required this.label});

  final String label;
}
