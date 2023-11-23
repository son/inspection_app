import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'lifeline.freezed.dart';
part 'lifeline.g.dart';

@freezed
class Lifeline with _$Lifeline {
  const Lifeline._();

  const factory Lifeline({
    @Default(Damage()) Damage lifelineMalfunction,
    @Default(Damage()) Damage otherMalfunction,
    @Default(Coverage.almost) Coverage coverage,
    @Default('') String remarks,
  }) = _Lifeline;

  factory Lifeline.fromJson(Map<String, dynamic> json) =>
      _$LifelineFromJson(json);
}
