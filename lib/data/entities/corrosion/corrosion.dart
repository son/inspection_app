import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'corrosion.freezed.dart';
part 'corrosion.g.dart';

@freezed
class Corrosion with _$Corrosion {
  const Corrosion._();

  const factory Corrosion({
    @Default(Damage()) Damage corrosion,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _Corrosion;

  factory Corrosion.fromJson(Map<String, dynamic> json) =>
      _$CorrosionFromJson(json);
}
