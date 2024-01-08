import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'ceiling.freezed.dart';
part 'ceiling.g.dart';

@freezed
class Ceiling with _$Ceiling {
  const Ceiling._();

  @JsonSerializable(explicitToJson: true)
  const factory Ceiling({
    AccessPanel? accessPanel,
    @Default(Damage()) Damage foundationDamage,
    @Default(Damage()) Damage rainCeilingLeak,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Ceiling;

  factory Ceiling.fromJson(Map<String, dynamic> json) =>
      _$CeilingFromJson(json);

  Ceiling allPassed() {
    return copyWith(
      foundationDamage: foundationDamage.copyWith(result: Result.passed),
      rainCeilingLeak: rainCeilingLeak.copyWith(result: Result.passed),
    );
  }
}

enum AccessPanel {
  none(label: 'なし'),
  exist(label: 'あり'),
  noNeed(label: '不要（小屋裏空間なし）');

  const AccessPanel({required this.label});

  final String label;
}
