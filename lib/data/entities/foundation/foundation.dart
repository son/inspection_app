import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'foundation.freezed.dart';
part 'foundation.g.dart';

@freezed
class Foundation with _$Foundation {
  const Foundation._();

  @JsonSerializable(explicitToJson: true)
  const factory Foundation({
    @Default(<String>[]) List<String> finishings,
    @Default(Damage()) Damage crack,
    @Default(Damage()) Damage damage,
    @Default(Damage()) Damage concreteDeterioration,
    @Default(Damage()) Damage rust,
    @Default(Damage()) Damage rebarExposure,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _Foundation;

  factory Foundation.fromJson(Map<String, dynamic> json) =>
      _$FoundationFromJson(json);
}
