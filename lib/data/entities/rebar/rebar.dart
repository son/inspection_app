import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'rebar.freezed.dart';
part 'rebar.g.dart';

@freezed
class Rebar with _$Rebar {
  const Rebar._();

  const factory Rebar({
    @Default(false) bool exploration,
    @Default(Damage()) Damage side,
    @Default(Damage()) Damage bottom,
    @Default(Coverage.almost) Coverage coverage,
    @Default('') String remarks,
  }) = _Rebar;

  factory Rebar.fromJson(Map<String, dynamic> json) => _$RebarFromJson(json);
}
