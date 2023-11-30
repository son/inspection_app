import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'floor.freezed.dart';
part 'floor.g.dart';

@freezed
class Floor with _$Floor {
  const Floor._();

  @JsonSerializable(explicitToJson: true)
  const factory Floor({
    @Default(Damage()) Damage damage,
    @Default(Damage()) Damage sinking,
    @Default(Damage()) Damage inclination,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _Floor;

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);
}
