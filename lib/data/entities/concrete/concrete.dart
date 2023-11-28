import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'concrete.freezed.dart';
part 'concrete.g.dart';

@freezed
class Concrete with _$Concrete {
  const Concrete._();

  const factory Concrete({
    bool? exploration,
    @Default(Damage()) Damage compressiveStrength1,
    @Default(Damage()) Damage compressiveStrength2,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _Concrete;

  factory Concrete.fromJson(Map<String, dynamic> json) =>
      _$ConcreteFromJson(json);
}
